[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-contents

The Contents control and data plane: the API, the durable worker, and — when
enabled — the Arrow Flight gateway and the local bridge relay. One image,
one entry point per process.

| Process | Command | Enabled by | Listens on |
| --- | --- | --- | --- |
| API | `uvicorn … datalayer_contents.main:app` | always | `apiPort` (9400), routed at `/api/contents` on `runHost` |
| worker | `datalayer-contents-worker` | `processes.worker.enabled` | probes only (`workerProbePort`, 9403) |
| flight | `datalayer-contents-flight` | `processes.flight.enabled` | `flightPort` (9401) gRPC; probes on `DATALAYER_CONTENTS_FLIGHT_PROBE_PORT` (9404) |
| bridge | `datalayer-contents-bridge` | `processes.bridge.enabled` | `bridgePort` (9402) WebSocket |

## Values

| Key | Default | Description |
| --- | --- | --- |
| `namespace` | `datalayer-api` | Where everything is installed |
| `contents.image` | `datalayer/contents:0.1.0` | The one image every process runs |
| `contents.runHost` | `""` | Public host of the API; renders the `Ingress` when set |
| `contents.apiPort` | `9400` | API port and Service port |
| `contents.workerProbePort` | `9403` | Where the worker answers `/health` and `/ready` |
| `contents.flightPort` | `9401` | The Flight gateway's gRPC port and its Service port |
| `contents.flightHost` | `""` | Public SNI host of the Flight gateway; renders the `IngressRouteTCP` when set with Flight enabled |
| `contents.bridgePort` | `9402` | The bridge relay's port |
| `contents.sharedFsPVC` | `""` | The shared filesystem claim, mounted at `sharedFsMountPath` in every process |
| `contents.env` | see `values.yaml` | Environment shared by every process |
| `contents.envValueFrom` | see `values.yaml` | Environment read from Secrets, shared by every process |
| `contents.processes.<name>.enabled` | worker on, others off | Which processes run |
| `contents.processes.<name>.replicas` | `1` | How many of each |
| `contents.alerts.enabled` | `false` | Render `templates/prometheusrule.yaml`, the alert rules below |
| `contents.alerts.labels` | `{}` | Labels the Prometheus Operator selects rules by |
| `contents.alerts.*` | see `values.yaml` | Thresholds and `for` durations of each rule |

## The Flight gateway

`processes.flight.enabled: true` adds the `contents-flight` Deployment and a
Service of its own, `<release>-flight-svc`, on `flightPort`. The API Service
selects the API pods, which do not listen on the Flight port, so the gateway
is not a port on that Service.

The gateway serves `GetFlightInfo` and `DoGet` of a ticket Contents minted
for one query result; it validates the ticket with the API exactly once and
streams the result's Arrow record batches within the ticket's row, byte and
time limits. `ListFlights`, `DoPut`, `DoExchange` and actions are refused
with a message: Arrow Flight SQL is not served yet.

### Routing: TLS passthrough

`contents.flightHost` renders a Traefik `IngressRouteTCP` on the `websecure`
entrypoint with `tls.passthrough: true`, matching `HostSNI(flightHost)`. The
`datalayer-traefik` chart ships Traefik with the `kubernetesCRD` provider,
which is what the route needs; the alternative — an h2c route with TLS
terminated at Traefik — would put the ticket in the clear between Traefik
and the gateway, so it is not what this chart renders.

Two consequences:

- **The host must be the gateway's own** (`flight.<runHost>`, say). A
  passthrough router matching the API's SNI would take the API's TLS before
  the API's HTTP router saw it.
- **The gateway terminates TLS itself**, so it needs the certificate for
  that host. Issue one — a cert-manager `Certificate` for `flightHost`, or
  one you already have — into a Secret with `tls.crt` and `tls.key`, and
  hand it to the process as PEM through `envValueFrom`:

  ```yaml
  contents:
    flightHost: flight.contents.example.test
    envValueFrom:
      DATALAYER_CONTENTS_FLIGHT_TLS_CERT:
        secretKeyRef: { name: contents-flight-tls, key: tls.crt, optional: true }
      DATALAYER_CONTENTS_FLIGHT_TLS_KEY:
        secretKeyRef: { name: contents-flight-tls, key: tls.key, optional: true }
  ```

  `optional: true` matters: `envValueFrom` is shared by every process, and a
  Secret that is not there yet must not keep the API from starting. Both
  variables accept the PEM itself or a path to a mounted file. Without
  either, the gateway listens in plain gRPC, which is right for in-cluster
  clients and wrong behind a passthrough route.

The gateway reaches the API at `DATALAYER_CONTENTS_URL` (set it to the
in-cluster Service or the public host) and needs
`DATALAYER_CONTENTS_FLIGHT_API_KEY`, the same value the API is given to
recognise it. `DATALAYER_CONTENTS_PUBLIC_URL`, when it differs, is the base
of the HTTPS fallback URL each metadata frame carries.

### Probes

The gateway answers `/health` (the listener is up) and `/ready` (the API
answers) on `DATALAYER_CONTENTS_FLIGHT_PROBE_PORT`. `templates/processes.yaml`
declares kubelet probes for the worker only; the same block for the flight
process, against that port, is the remaining wiring.

## Alerts

`contents.alerts.enabled: true` renders a `PrometheusRule` (the CRD comes
with the observer chart) over the metrics every Contents process exports
through `OTEL_*` — `datalayer_contents/metrics.py` names them, and the
collector's Prometheus exporter translates them (dots to underscores,
`_total` on counters, the unit as a suffix):

| Alert | Fires when | Metric |
| --- | --- | --- |
| `ContentsWorkerStalled` | the worker exports but its loop stopped coming round | `contents_worker_loops_total` |
| `ContentsWorkerAbsent` | no worker reports at all | `contents_worker_loops_total` |
| `ContentsDeadLetterGrowing` / `Deep` | operations are giving up, or too many have | `contents_operations_dead_letter` |
| `ContentsReadinessFailing` | a readiness probe keeps finding a required dependency down | `contents_readiness_failures_total{process,dependency}` |
| `ContentsBridgeDisconnects` | bridge ends drop off the relay in a burst | `contents_bridge_sessions_total{state}` |
| `ContentsDataserverUnavailable` | a Dataserver missed three leases, or a routed query was refused | `contents_dataserver_lease_sweeps_total{state}`, `contents_dataserver_refusals_total{code}` |
| `ContentsReconcileDiscrepancies` / `Stale` | the catalog and the store disagree, or nobody has checked lately | `contents_reconcile_discrepancies{kind}`, `contents_reconcile_last_run_timestamp_seconds` |
| `ContentsLimitsRefusing` | a quota or rate limit refuses more than the threshold | `contents_limit_refusals_total{limit}` |

The thresholds are `contents.alerts.*` in `values.yaml`;
`reconcileIntervalSeconds` must match
`DATALAYER_CONTENTS_RECONCILE_INTERVAL_SECONDS`. The worker, the gateway
and the relay export through the same `OTEL_*` settings the API does;
`OTEL_SDK_DISABLED=true` silences all four.

## Rendering

```bash
helm template contents . \
  --set contents.processes.flight.enabled=true \
  --set contents.flightHost=flight.contents.example.test
```

`contents/tests/test_flight_chart.py` renders the chart both ways when
`helm` and this directory are present; `contents/tests/test_alert_rules_chart.py`
renders the rules with `contents.alerts.enabled=true` and checks every
expression names a metric the code writes.
