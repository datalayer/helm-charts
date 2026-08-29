[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-data-server

Deploys `datalayer-data-server`, the Dataserver a customer runs in their
own cluster so Datalayer sandboxes can query sources that network holds.
One Deployment, references to two Secrets, a ConfigMap of connectors — and
**no Service, no ingress**: the Data Server opens every connection it has
(mTLS to Contents) and listens on nothing.

## Before installing

1. Create the Dataserver registration in Datalayer; note its uid.
2. Run `datalayer-data-server bootstrap --uid <uid> --out identity` with the
   owner's token in `DATALAYER_TOKEN`; it writes `tls.key`, `tls.crt` and
   `ca.crt`.
3. Create the Secrets:

   ```bash
   kubectl -n datalayer-dataserver create secret generic datalayer-data-server-api-key \
     --from-literal=api-key=...
   kubectl -n datalayer-dataserver create secret generic datalayer-data-server-identity \
     --from-file=tls.crt=identity/tls.crt --from-file=tls.key=identity/tls.key \
     --from-file=ca.crt=identity/ca.crt
   ```

## Values

| Key | Default | Description |
| --- | --- | --- |
| `namespace` | `datalayer-dataserver` | Where it runs |
| `dataserver.image` | `datalayer/data-server:0.1.0` | The image |
| `dataserver.replicas` | `1` | One identity is one Data Server; keep it at one |
| `dataserver.contentsUrl` | `""` | Where Contents answers |
| `dataserver.identity` | `""` | The registration identity, the certificate's common name |
| `dataserver.apiKeySecret` | `datalayer-data-server-api-key` / `api-key` | Secret holding the `dataserver` API key |
| `dataserver.identitySecret.name` | `datalayer-data-server-identity` | Secret with `tls.crt`, `tls.key`, `ca.crt` |
| `dataserver.identitySecret.hasCA` | `true` | Whether `ca.crt` is there and Contents is verified with it |
| `dataserver.connectors` | `[]` | The connectors and their policy; rendered as `connectors.json` |
| `dataserver.env` | tuning knobs | Plain environment for the process and the drivers |
| `dataserver.envValueFrom` | `{}` | Source credentials from Secrets (`AWS_ACCESS_KEY_ID`, …) |
| `dataserver.extraVolumes` / `extraVolumeMounts` | `[]` | A BigQuery service-account file, a DuckDB file, a data PVC |
| `dataserver.spool.sizeLimit` | `10Gi` | The `emptyDir` results are spooled to before upload |

A connector, in values:

```yaml
dataserver:
  contentsUrl: https://contents.example.test
  identity: acme-warehouse
  connectors:
    - name: warehouse
      connector_type: sql
      operations: [select]
      policy_version: "1"
      policy:
        allowed_operations: [select]
        row_policy: {max_rows: 100000}
        column_policy: {deny: [ssn]}
        object_policy: {allow_tables: [orders, sales.invoices]}
      settings: {engine: duckdb, database: /data/warehouse.duckdb}
  extraVolumes:
    - name: data
      persistentVolumeClaim: {claimName: warehouse-data, readOnly: true}
  extraVolumeMounts:
    - name: data
      mountPath: /data
      readOnly: true
```

Changing `connectors` restarts the pod (the ConfigMap's checksum is a pod
annotation); the old pod drains first (`strategy: Recreate`).

## Probes

None. The process has no HTTP surface, and a file touched from a side
thread would say "alive" while a stuck loop said nothing. Its health is its
heartbeat, which Contents shows as the registration's state — `available`,
`draining`, `unavailable`, `revoked` — where the people who care are looking.
