[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-growth

Datalayer Growth

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| growth.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| growth.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| growth.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| growth.certificateIssuer | string | `"letsencrypt"` |  |
| growth.clusterType | string | `"any"` |  |
| growth.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| growth.env.DATALAYER_BLUESKY_API_KEY | string | `""` |  |
| growth.env.DATALAYER_BLUESKY_API_SECRET | string | `""` |  |
| growth.env.DATALAYER_CDN_URL | string | `""` |  |
| growth.env.DATALAYER_CORS_ORIGIN | string | `"*"` |  |
| growth.env.DATALAYER_CREDITS_PROVIDER | string | `""` |  |
| growth.env.DATALAYER_GITHUB_CLIENT_ID | string | `""` |  |
| growth.env.DATALAYER_GITHUB_CLIENT_SECRET | string | `""` |  |
| growth.env.DATALAYER_Growth_API_KEY | string | `""` |  |
| growth.env.DATALAYER_INITIAL_USER_CREDITS | string | `"500"` |  |
| growth.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| growth.env.DATALAYER_JWT_ALLOWED_ISSUERS | string | `""` |  |
| growth.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"true"` |  |
| growth.env.DATALAYER_JWT_DEFAULT_KID_ISSUER | string | `""` |  |
| growth.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| growth.env.DATALAYER_JWT_SECRET | string | `""` |  |
| growth.env.DATALAYER_JWT_SKIP_EXTERNAL_TOKEN_SIGNATURE_VERIFICATION | string | `"false"` |  |
| growth.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| growth.env.DATALAYER_LINKEDIN_CLIENT_ID | string | `""` |  |
| growth.env.DATALAYER_LINKEDIN_CLIENT_SECRET | string | `""` |  |
| growth.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| growth.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| growth.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| growth.env.DATALAYER_PUB_SUB_ENGINE | string | `"pulsar"` |  |
| growth.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| growth.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| growth.env.DATALAYER_RUN_URL | string | `""` |  |
| growth.env.DATALAYER_SMTP_HOST | string | `""` |  |
| growth.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| growth.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| growth.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| growth.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| growth.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| growth.env.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| growth.env.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| growth.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| growth.env.DATALAYER_STRIPE_API_KEY | string | `""` |  |
| growth.env.DATALAYER_STRIPE_CHECKOUT_ROUTE | string | `"checkout"` |  |
| growth.env.DATALAYER_STRIPE_JS_API_KEY | string | `""` |  |
| growth.env.DATALAYER_STRIPE_PRODUCT_ID | string | `""` |  |
| growth.env.DATALAYER_STRIPE_WEBHOOK_SECRET | string | `""` |  |
| growth.env.DATALAYER_SUPPORT_EMAIL | string | `""` |  |
| growth.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| growth.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| growth.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| growth.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| growth.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| growth.image | string | `"datalayer/growth:0.0.1"` |  |
| growth.imagePullPolicy | string | `"Always"` |  |
| growth.ingressClass | string | `"datalayer-traefik"` |  |
| growth.port | int | `3300` |  |
| growth.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| growth.tolerations | object | `{}` |  |

