[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-success

Datalayer Success

![Version: 1.0.8](https://img.shields.io/badge/Version-1.0.8-informational?style=flat-square) ![AppVersion: 1.0.7](https://img.shields.io/badge/AppVersion-1.0.7-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| success.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| success.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| success.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| success.certificateIssuer | string | `"letsencrypt"` |  |
| success.clusterType | string | `"any"` |  |
| success.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| success.env.DATALAYER_BLUESKY_API_KEY | string | `""` |  |
| success.env.DATALAYER_BLUESKY_API_SECRET | string | `""` |  |
| success.env.DATALAYER_CDN_URL | string | `""` |  |
| success.env.DATALAYER_CREDITS_PROVIDER | string | `""` |  |
| success.env.DATALAYER_GITHUB_CLIENT_ID | string | `""` |  |
| success.env.DATALAYER_GITHUB_CLIENT_SECRET | string | `""` |  |
| success.env.DATALAYER_Success_API_KEY | string | `""` |  |
| success.env.DATALAYER_INITIAL_USER_CREDITS | string | `"500"` |  |
| success.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| success.env.DATALAYER_JWT_ALLOWED_ISSUERS | string | `""` |  |
| success.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"true"` |  |
| success.env.DATALAYER_JWT_DEFAULT_KID_ISSUER | string | `""` |  |
| success.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| success.env.DATALAYER_JWT_SECRET | string | `""` |  |
| success.env.DATALAYER_JWT_SKIP_EXTERNAL_TOKEN_SIGNATURE_VERIFICATION | string | `"false"` |  |
| success.env.DATALAYER_KAKFA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| success.env.DATALAYER_LINKEDIN_CLIENT_ID | string | `""` |  |
| success.env.DATALAYER_LINKEDIN_CLIENT_SECRET | string | `""` |  |
| success.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| success.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| success.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| success.env.DATALAYER_PUB_SUB_ENGINE | string | `"pulsar"` |  |
| success.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| success.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| success.env.DATALAYER_RUN_URL | string | `""` |  |
| success.env.DATALAYER_SMTP_HOST | string | `""` |  |
| success.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| success.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| success.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| success.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| success.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| success.env.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| success.env.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| success.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| success.env.DATALAYER_STRIPE_API_KEY | string | `""` |  |
| success.env.DATALAYER_STRIPE_CHECKOUT_ROUTE | string | `"checkout"` |  |
| success.env.DATALAYER_STRIPE_JS_API_KEY | string | `""` |  |
| success.env.DATALAYER_STRIPE_PRODUCT_ID | string | `""` |  |
| success.env.DATALAYER_STRIPE_WEBHOOK_SECRET | string | `""` |  |
| success.env.DATALAYER_SUPPORT_EMAIL | string | `""` |  |
| success.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| success.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| success.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| success.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| success.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| success.image | string | `"datalayer/success:1.0.6"` |  |
| success.imagePullPolicy | string | `"Always"` |  |
| success.ingressClass | string | `"datalayer-traefik"` |  |
| success.port | int | `3300` |  |
| success.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| success.tolerations | object | `{}` |  |

