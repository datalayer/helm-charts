[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-inbounds

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ![AppVersion: 0.0.2](https://img.shields.io/badge/AppVersion-0.0.2-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| inbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/system"` |  |
| inbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| inbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| inbounds.env.DATALAYER_KAFKA_PASSWORD | string | `""` |  |
| inbounds.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| inbounds.env.DATALAYER_KAFKA_USERNAME | string | `""` |  |
| inbounds.env.DATALAYER_PUB_SUB_ENGINE | string | `"kafka"` |  |
| inbounds.env.DATALAYER_SMTP_HOST | string | `""` |  |
| inbounds.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| inbounds.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| inbounds.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| inbounds.mailer.image | string | `nil` |  |
| inbounds.mailer.imagePullPolicy | string | `"Always"` |  |
| inbounds.mailer.port | int | `2331` |  |
| inbounds.namespace | string | `"datalayer-system"` |  |

