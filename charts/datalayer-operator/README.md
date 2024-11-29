[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-operator

Datalayer Operator

![Version: 1.0.7](https://img.shields.io/badge/Version-1.0.7-informational?style=flat-square) ![AppVersion: 1.0.7](https://img.shields.io/badge/AppVersion-1.0.7-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech/docs/build).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| operator.crds | bool | `true` |  |
| operator.env.AWS_ACCESS_KEY_ID | string | `""` |  |
| operator.env.AWS_DEFAULT_REGION | string | `""` |  |
| operator.env.AWS_SECRET_ACCESS_KEY | string | `""` |  |
| operator.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| operator.env.DATALAYER_CERT_ISSUER | string | `"letsencrypt"` |  |
| operator.env.DATALAYER_DOCKER_REGISTRY | string | `""` |  |
| operator.env.DATALAYER_IAM_API_KEY | string | `""` |  |
| operator.env.DATALAYER_IAM_HOST | string | `"datalayer-iam-svc.datalayer-api.svc.cluster.local:9700"` |  |
| operator.env.DATALAYER_INGRESS_CLASS_NAME | string | `"datalayer-traefik"` |  |
| operator.env.DATALAYER_OPERATOR_API_KEY | string | `""` |  |
| operator.env.DATALAYER_PUB_SUB_ENGINE | string | `"pulsar"` |  |
| operator.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| operator.env.DATALAYER_RUN_HOST | string | `""` |  |
| operator.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| operator.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| operator.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| operator.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| operator.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| operator.image | string | `"datalayer/operator:1.0.7"` |  |
| operator.imagePullPolicy | string | `"Always"` |  |
| operator.port | int | `2111` |  |
| operator.sharedFsPVC | string | `""` |  |
| operator.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| operator.tolerations | object | `{}` |  |
| operator.volumeMounts | object | `{}` |  |

