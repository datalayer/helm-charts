[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-inbounds

Datalayer Inbounds

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| inbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| inbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| inbounds.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| inbounds.certificateIssuer | string | `"letsencrypt"` |  |
| inbounds.clusterType | string | `"any"` |  |
| inbounds.env.DATALAYER_ANYMAIL_API_KEY | string | `""` |  |
| inbounds.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| inbounds.env.DATALAYER_BLUESKY_API_KEY | string | `""` |  |
| inbounds.env.DATALAYER_BLUESKY_API_SECRET | string | `""` |  |
| inbounds.env.DATALAYER_CDN_URL | string | `""` |  |
| inbounds.env.DATALAYER_CORS_ORIGIN | string | `"*"` |  |
| inbounds.env.DATALAYER_CREDITS_PROVIDER | string | `""` |  |
| inbounds.env.DATALAYER_GITHUB_CLIENT_ID | string | `""` |  |
| inbounds.env.DATALAYER_GITHUB_CLIENT_SECRET | string | `""` |  |
| inbounds.env.DATALAYER_INBOUNDS_API_KEY | string | `""` |  |
| inbounds.env.DATALAYER_INITIAL_USER_CREDITS | string | `"500"` |  |
| inbounds.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| inbounds.env.DATALAYER_JWT_ALLOWED_ISSUERS | string | `""` |  |
| inbounds.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"true"` |  |
| inbounds.env.DATALAYER_JWT_DEFAULT_KID_ISSUER | string | `""` |  |
| inbounds.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| inbounds.env.DATALAYER_JWT_SECRET | string | `""` |  |
| inbounds.env.DATALAYER_JWT_SKIP_EXTERNAL_TOKEN_SIGNATURE_VERIFICATION | string | `"false"` |  |
| inbounds.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| inbounds.env.DATALAYER_LINKEDIN_CLIENT_ID | string | `""` |  |
| inbounds.env.DATALAYER_LINKEDIN_CLIENT_SECRET | string | `""` |  |
| inbounds.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| inbounds.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| inbounds.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| inbounds.env.DATALAYER_PUB_SUB_ENGINE | string | `"pulsar"` |  |
| inbounds.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| inbounds.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| inbounds.env.DATALAYER_RUN_URL | string | `""` |  |
| inbounds.env.DATALAYER_SMTP_HOST | string | `""` |  |
| inbounds.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| inbounds.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| inbounds.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| inbounds.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| inbounds.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| inbounds.env.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| inbounds.env.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| inbounds.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| inbounds.env.DATALAYER_SUPPORT_EMAIL | string | `""` |  |
| inbounds.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| inbounds.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| inbounds.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| inbounds.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| inbounds.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| inbounds.image | string | `"datalayer/inbounds:0.0.1"` |  |
| inbounds.imagePullPolicy | string | `"Always"` |  |
| inbounds.ingressClass | string | `"datalayer-traefik"` |  |
| inbounds.port | int | `7667` |  |
| inbounds.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| inbounds.tolerations | object | `{}` |  |

