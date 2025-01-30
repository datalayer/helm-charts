[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-iam

Datalayer IAM

![Version: 1.0.8](https://img.shields.io/badge/Version-1.0.8-informational?style=flat-square) ![AppVersion: 1.0.7](https://img.shields.io/badge/AppVersion-1.0.7-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| iam.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| iam.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| iam.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| iam.certificateIssuer | string | `"letsencrypt"` |  |
| iam.clusterType | string | `"any"` |  |
| iam.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| iam.env.DATALAYER_BLUESKY_API_KEY | string | `""` |  |
| iam.env.DATALAYER_BLUESKY_API_SECRET | string | `""` |  |
| iam.env.DATALAYER_CDN_URL | string | `""` |  |
| iam.env.DATALAYER_CREDITS_PROVIDER | string | `""` |  |
| iam.env.DATALAYER_GITHUB_CLIENT_ID | string | `""` |  |
| iam.env.DATALAYER_GITHUB_CLIENT_SECRET | string | `""` |  |
| iam.env.DATALAYER_IAM_API_KEY | string | `""` |  |
| iam.env.DATALAYER_INITIAL_USER_CREDITS | string | `"500"` |  |
| iam.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| iam.env.DATALAYER_JWT_ALLOWED_ISSUERS | string | `""` |  |
| iam.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"true"` |  |
| iam.env.DATALAYER_JWT_DEFAULT_KID_ISSUER | string | `""` |  |
| iam.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| iam.env.DATALAYER_JWT_SECRET | string | `""` |  |
| iam.env.DATALAYER_JWT_SKIP_EXTERNAL_TOKEN_SIGNATURE_VERIFICATION | string | `"false"` |  |
| iam.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| iam.env.DATALAYER_LINKEDIN_CLIENT_ID | string | `""` |  |
| iam.env.DATALAYER_LINKEDIN_CLIENT_SECRET | string | `""` |  |
| iam.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| iam.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| iam.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| iam.env.DATALAYER_PUB_SUB_ENGINE | string | `"pulsar"` |  |
| iam.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| iam.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| iam.env.DATALAYER_RUN_URL | string | `""` |  |
| iam.env.DATALAYER_SMTP_HOST | string | `""` |  |
| iam.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| iam.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| iam.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| iam.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| iam.env.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| iam.env.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| iam.env.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| iam.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| iam.env.DATALAYER_STRIPE_API_KEY | string | `""` |  |
| iam.env.DATALAYER_STRIPE_CHECKOUT_ROUTE | string | `"checkout"` |  |
| iam.env.DATALAYER_STRIPE_JS_API_KEY | string | `""` |  |
| iam.env.DATALAYER_STRIPE_PRODUCT_ID | string | `""` |  |
| iam.env.DATALAYER_STRIPE_WEBHOOK_SECRET | string | `""` |  |
| iam.env.DATALAYER_SUPPORT_EMAIL | string | `""` |  |
| iam.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| iam.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| iam.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| iam.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| iam.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| iam.image | string | `"datalayer/iam:1.0.8"` |  |
| iam.imagePullPolicy | string | `"Always"` |  |
| iam.ingressClass | string | `"datalayer-traefik"` |  |
| iam.port | int | `9700` |  |
| iam.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| iam.tolerations | object | `{}` |  |

