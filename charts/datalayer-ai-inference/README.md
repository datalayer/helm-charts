[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-ai-inference

Datalayer AI Inference

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer AI](https://datalayer.ai).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| aiinference.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| aiinference.env.DATALAYER_AZURE_OPENAI_API_KEY | string | `""` |  |
| aiinference.env.DATALAYER_AZURE_OPENAI_CHAT_COMPLETION_ENDPOINT | string | `""` |  |
| aiinference.env.DATALAYER_CDN_URL | string | `""` |  |
| aiinference.env.DATALAYER_CORS_ORIGIN | string | `"*"` |  |
| aiinference.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| aiinference.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| aiinference.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| aiinference.env.DATALAYER_JWT_SECRET | string | `""` |  |
| aiinference.env.DATALAYER_OPENAI_API_VERSION | string | `""` |  |
| aiinference.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| aiinference.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| aiinference.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| aiinference.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| aiinference.env.DATALAYER_RUN_URL | string | `""` |  |
| aiinference.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| aiinference.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| aiinference.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| aiinference.image | string | `"datalayer/ai-inference:0.0.1"` |  |
| aiinference.imagePullPolicy | string | `"Always"` |  |
| aiinference.port | int | `4450` |  |
| aiinference.registryCredentialsSecret | string | `"reg-creds"` |  |
| aiinference.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

