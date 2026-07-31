[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# Datalayer PostgreSQL Operator Helm Chart

This chart deploys the [CloudNativePG](https://cloudnative-pg.io) operator, which
manages PostgreSQL clusters on Kubernetes through the `Cluster`, `Backup`,
`ScheduledBackup` and related CRDs.

The primary Datalayer use case is a highly-available PostgreSQL cluster used as
the persisted memory backend for the Datalayer AI agents via
[mem0ai](https://mem0.ai) and its [`pgvector`](https://github.com/pgvector/pgvector)
vector store.

## Values

Only the Datalayer-specific overrides are tracked here; the upstream
`cnpg/cloudnative-pg` chart provides the full set of defaults.

- `values.yaml` — documented base overrides.
- `values-any.yaml` — cluster-agnostic overrides applied by `plane`
  (pins the operator to the Datalayer system nodes). This is the file passed to
  `helm upgrade`.

## Deploy

```bash
plane up datalayer-postgresql-operator
# or
helm repo add cnpg https://cloudnative-pg.github.io/charts
helm upgrade --install datalayer-postgresql-operator cnpg/cloudnative-pg \
  --version 0.29.0 \
  --create-namespace --namespace datalayer-postgresql-operator \
  --values values-any.yaml
```

> Chart `0.29.0` ships CloudNativePG `1.30.0`. The chart version is decoupled from
> the operator (app) version.

See the [Clouder PostgreSQL documentation](https://clouder.datalayer.tech) for
the cluster lifecycle (create, monitor, backup, restore) and the mem0ai
integration.

