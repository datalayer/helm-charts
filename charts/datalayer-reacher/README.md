[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-reacher

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ![AppVersion: 0.0.2](https://img.shields.io/badge/AppVersion-0.0.2-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| reacher.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/system"` |  |
| reacher.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| reacher.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| reacher.env.DATALAYER_KAFKA_PASSWORD | string | `""` |  |
| reacher.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| reacher.env.DATALAYER_KAFKA_USERNAME | string | `""` |  |
| reacher.env.DATALAYER_PUB_SUB_ENGINE | string | `"kafka"` |  |
| reacher.env.DATALAYER_SMTP_HOST | string | `""` |  |
| reacher.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| reacher.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| reacher.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| reacher.mailer.image | string | `nil` |  |
| reacher.mailer.imagePullPolicy | string | `"Always"` |  |
| reacher.mailer.port | int | `2331` |  |
| reacher.namespace | string | `"datalayer-system"` |  |

