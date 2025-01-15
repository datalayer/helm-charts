[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-ai-agent

Datalayer AI Agent

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ai-agent.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| ai-agent.env.DATALAYER_CDN_URL | string | `""` |  |
| ai-agent.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| ai-agent.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| ai-agent.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| ai-agent.env.DATALAYER_JWT_SECRET | string | `""` |  |
| ai-agent.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| ai-agent.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| ai-agent.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| ai-agent.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| ai-agent.env.DATALAYER_RUN_URL | string | `""` |  |
| ai-agent.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| ai-agent.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| ai-agent.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| ai-agent.image | string | `"datalayer/ai-agent:0.0.1"` |  |
| ai-agent.imagePullPolicy | string | `"Always"` |  |
| ai-agent.port | int | `4400` |  |
| ai-agent.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

