[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-runtimes

Datalayer Runtimes

![Version: 1.0.11](https://img.shields.io/badge/Version-1.0.11-informational?style=flat-square) ![AppVersion: 1.0.9](https://img.shields.io/badge/AppVersion-1.0.9-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| runtimes.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| runtimes.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| runtimes.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| runtimes.certificateIssuer | string | `"letsencrypt"` |  |
| runtimes.clusterType | string | `"any"` |  |
| runtimes.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| runtimes.env.DATALAYER_CDN_URL | string | `""` |  |
| runtimes.env.DATALAYER_CORS_ORIGIN | string | `"*"` |  |
| runtimes.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| runtimes.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| runtimes.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| runtimes.env.DATALAYER_JWT_SECRET | string | `""` |  |
| runtimes.env.DATALAYER_KAFKA_PASSWORD | string | `""` |  |
| runtimes.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| runtimes.env.DATALAYER_KAFKA_USERNAME | string | `""` |  |
| runtimes.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| runtimes.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| runtimes.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| runtimes.env.DATALAYER_OPERATOR_API_KEY | string | `""` |  |
| runtimes.env.DATALAYER_OPERATOR_HOST | string | `"datalayer-operator-svc.datalayer-runtimes.svc.cluster.local:2111"` |  |
| runtimes.env.DATALAYER_PUB_SUB_ENGINE | string | `"kafka"` |  |
| runtimes.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| runtimes.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| runtimes.env.DATALAYER_RUN_URL | string | `""` |  |
| runtimes.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| runtimes.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| runtimes.env.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| runtimes.env.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| runtimes.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| runtimes.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| runtimes.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| runtimes.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| runtimes.image | string | `"datalayer/runtimes:1.0.9"` |  |
| runtimes.imagePullPolicy | string | `"Always"` |  |
| runtimes.ingressClass | string | `"datalayer-traefik"` |  |
| runtimes.port | int | `9500` |  |
| runtimes.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| runtimes.tolerations | object | `{}` |  |

