[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-spacer

Datalayer Spacer

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| spacer.env.AWS_ACCESS_KEY_ID | string | `""` |  |
| spacer.env.AWS_DEFAULT_REGION | string | `""` |  |
| spacer.env.AWS_SECRET_ACCESS_KEY | string | `""` |  |
| spacer.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| spacer.env.DATALAYER_CDN_URL | string | `""` |  |
| spacer.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| spacer.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| spacer.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| spacer.env.DATALAYER_JWT_SECRET | string | `""` |  |
| spacer.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| spacer.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| spacer.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| spacer.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| spacer.env.DATALAYER_RUN_URL | string | `""` |  |
| spacer.env.DATALAYER_SMTP_HOST | string | `""` |  |
| spacer.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| spacer.env.DATALAYER_SMTP_PORT | string | `""` |  |
| spacer.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| spacer.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| spacer.env.DATALAYER_SOLR_ZK_HOST | string | `""` |  |
| spacer.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| spacer.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| spacer.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| spacer.image | string | `"datalayer/spacer:0.0.6"` |  |
| spacer.imagePullPolicy | string | `"Always"` |  |
| spacer.port | int | `9900` |  |
| spacer.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

