[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-outbounds

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ![AppVersion: 0.0.2](https://img.shields.io/badge/AppVersion-0.0.2-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| outbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/system"` |  |
| outbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| outbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| outbounds.env.DATALAYER_KAFKA_PASSWORD | string | `""` |  |
| outbounds.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| outbounds.env.DATALAYER_KAFKA_USERNAME | string | `""` |  |
| outbounds.env.DATALAYER_PUB_SUB_ENGINE | string | `"kafka"` |  |
| outbounds.env.DATALAYER_SMTP_HOST | string | `""` |  |
| outbounds.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| outbounds.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| outbounds.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| outbounds.mailer.image | string | `nil` |  |
| outbounds.mailer.imagePullPolicy | string | `"Always"` |  |
| outbounds.mailer.port | int | `2331` |  |
| outbounds.namespace | string | `"datalayer-system"` |  |

