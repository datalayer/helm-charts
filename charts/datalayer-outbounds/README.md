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
| outbounds.env.DATALAYER_MAIL_OUTBOUND_INTERVAL_SEC | int | `60` |  |
| outbounds.env.DATALAYER_PUB_SUB_ENGINE | string | `"pulsar"` |  |
| outbounds.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| outbounds.env.DATALAYER_SMTP_HOST | string | `""` |  |
| outbounds.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| outbounds.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| outbounds.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| outbounds.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| outbounds.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| outbounds.env.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| outbounds.env.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| outbounds.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| outbounds.mailer.image | string | `nil` |  |
| outbounds.mailer.imagePullPolicy | string | `"Always"` |  |
| outbounds.mailer.port | int | `2331` |  |
| outbounds.namespace | string | `"datalayer-growth"` |  |

