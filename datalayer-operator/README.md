# datalayer-operator

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![AppVersion: 0.1.1](https://img.shields.io/badge/AppVersion-0.1.1-informational?style=flat-square)

Datalayer Operator

**Homepage:** <https://datalayer.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> |  |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/datalayer-operator>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
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
| operator.image | string | `"datalayer/operator:0.1.1"` |  |
| operator.imagePullPolicy | string | `"Always"` |  |
| operator.port | int | `2111` |  |
| operator.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

