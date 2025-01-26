[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-ai-agents

Datalayer AI Agent

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| aiagents.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| aiagents.env.DATALAYER_AZURE_OPENAI_API_KEY | string | `""` |  |
| aiagents.env.DATALAYER_AZURE_OPENAI_ENDPOINT | string | `""` |  |
| aiagents.env.DATALAYER_CDN_URL | string | `""` |  |
| aiagents.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| aiagents.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| aiagents.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| aiagents.env.DATALAYER_JWT_SECRET | string | `""` |  |
| aiagents.env.DATALAYER_OPENAI_API_VERSION | string | `""` |  |
| aiagents.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| aiagents.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| aiagents.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| aiagents.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| aiagents.env.DATALAYER_RUN_URL | string | `""` |  |
| aiagents.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| aiagents.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| aiagents.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| aiagents.image | string | `"datalayer/ai-agents:0.0.1"` |  |
| aiagents.imagePullPolicy | string | `"Always"` |  |
| aiagents.port | int | `4400` |  |
| aiagents.registryCredentialsSecret | string | `"reg-creds"` |  |
| aiagents.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

