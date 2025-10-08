[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-mcp-servers

Datalayer MCP Servers

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer AI](https://datalayer.ai).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| mcpservers.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| mcpservers.env.DATALAYER_AZURE_OPENAI_API_KEY | string | `""` |  |
| mcpservers.env.DATALAYER_AZURE_OPENAI_CHAT_COMPLETION_ENDPOINT | string | `""` |  |
| mcpservers.env.DATALAYER_CDN_URL | string | `""` |  |
| mcpservers.env.DATALAYER_CORS_ORIGIN | string | `"*"` |  |
| mcpservers.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| mcpservers.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| mcpservers.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| mcpservers.env.DATALAYER_JWT_SECRET | string | `""` |  |
| mcpservers.env.DATALAYER_OPENAI_API_VERSION | string | `""` |  |
| mcpservers.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| mcpservers.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| mcpservers.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| mcpservers.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| mcpservers.env.DATALAYER_RUN_URL | string | `""` |  |
| mcpservers.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| mcpservers.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| mcpservers.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| mcpservers.image | string | `"datalayer/mcp-servers:0.0.1"` |  |
| mcpservers.imagePullPolicy | string | `"Always"` |  |
| mcpservers.port | int | `4400` |  |
| mcpservers.registryCredentialsSecret | string | `"reg-creds"` |  |
| mcpservers.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

