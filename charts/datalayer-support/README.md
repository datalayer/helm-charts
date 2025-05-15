[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-support

Datalayer Support

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| support.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| support.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| support.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| support.certificateIssuer | string | `"letsencrypt"` |  |
| support.clusterType | string | `"any"` |  |
| support.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| support.env.DATALAYER_BLUESKY_API_KEY | string | `""` |  |
| support.env.DATALAYER_BLUESKY_API_SECRET | string | `""` |  |
| support.env.DATALAYER_CDN_URL | string | `""` |  |
| support.env.DATALAYER_CORS_ORIGIN | string | `"*"` |  |
| support.env.DATALAYER_CREDITS_PROVIDER | string | `""` |  |
| support.env.DATALAYER_GITHUB_CLIENT_ID | string | `""` |  |
| support.env.DATALAYER_GITHUB_CLIENT_SECRET | string | `""` |  |
| support.env.DATALAYER_INITIAL_USER_CREDITS | string | `"500"` |  |
| support.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| support.env.DATALAYER_JWT_ALLOWED_ISSUERS | string | `""` |  |
| support.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"true"` |  |
| support.env.DATALAYER_JWT_DEFAULT_KID_ISSUER | string | `""` |  |
| support.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| support.env.DATALAYER_JWT_SECRET | string | `""` |  |
| support.env.DATALAYER_JWT_SKIP_EXTERNAL_TOKEN_SIGNATURE_VERIFICATION | string | `"false"` |  |
| support.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| support.env.DATALAYER_LINKEDIN_CLIENT_ID | string | `""` |  |
| support.env.DATALAYER_LINKEDIN_CLIENT_SECRET | string | `""` |  |
| support.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| support.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| support.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| support.env.DATALAYER_PUB_SUB_ENGINE | string | `"kafka"` |  |
| support.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| support.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| support.env.DATALAYER_RUN_URL | string | `""` |  |
| support.env.DATALAYER_SMTP_HOST | string | `""` |  |
| support.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| support.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| support.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| support.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| support.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| support.env.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| support.env.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| support.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| support.env.DATALAYER_STRIPE_API_KEY | string | `""` |  |
| support.env.DATALAYER_STRIPE_CHECKOUT_ROUTE | string | `"checkout"` |  |
| support.env.DATALAYER_STRIPE_JS_API_KEY | string | `""` |  |
| support.env.DATALAYER_STRIPE_PRODUCT_ID | string | `""` |  |
| support.env.DATALAYER_STRIPE_WEBHOOK_SECRET | string | `""` |  |
| support.env.DATALAYER_SUPPORT_EMAIL | string | `""` |  |
| support.env.DATALAYER_Support_API_KEY | string | `""` |  |
| support.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| support.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| support.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| support.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| support.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| support.image | string | `"datalayer/support:0.0.1"` |  |
| support.imagePullPolicy | string | `"Always"` |  |
| support.ingressClass | string | `"datalayer-traefik"` |  |
| support.port | int | `2200` |  |
| support.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| support.tolerations | object | `{}` |  |

