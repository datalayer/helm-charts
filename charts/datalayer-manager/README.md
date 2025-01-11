[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-manager

Datalayer Manager

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ![AppVersion: 0.0.2](https://img.shields.io/badge/AppVersion-0.0.2-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| manager.env.AWS_ACCESS_KEY_ID | string | `""` |  |
| manager.env.AWS_DEFAULT_REGION | string | `""` |  |
| manager.env.AWS_SECRET_ACCESS_KEY | string | `""` |  |
| manager.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| manager.env.DATALAYER_CDN_URL | string | `""` |  |
| manager.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| manager.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| manager.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| manager.env.DATALAYER_JWT_SECRET | string | `""` |  |
| manager.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| manager.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| manager.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| manager.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| manager.env.DATALAYER_RUN_URL | string | `""` |  |
| manager.env.DATALAYER_SMTP_HOST | string | `""` |  |
| manager.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| manager.env.DATALAYER_SMTP_PORT | string | `""` |  |
| manager.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| manager.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| manager.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| manager.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| manager.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| manager.image | string | `"datalayer/manager:0.0.1"` |  |
| manager.imagePullPolicy | string | `"Always"` |  |
| manager.ingress | bool | `false` |  |
| manager.port | int | `9300` |  |
| manager.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

