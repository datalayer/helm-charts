# runtime-pools

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

Runtime Pools

**Homepage:** <https://datalayer.ai>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/charts/datalayer-runtime-pools>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| runtime-pools.env.DATALAYER_URL | string | `""` |  |
| runtime-pools.env.GITHUB_CLIENT_ID | string | `""` |  |
| runtime-pools.env.GITHUB_CLIENT_SECRET | string | `""` |  |
| runtime-pools.env.GITHUB_OAUTH_CALLBACK_URL | string | `""` |  |
| runtime-pools.extraEnvVars | list | `[]` |  |
| runtime-pools.image | string | `"datalayer/runtime-pools:0.0.8"` |  |
| runtime-pools.imagePullPolicy | string | `"Always"` |  |
| runtime-pools.port | int | `2300` |  |
| runtime-pools.replicaCount | int | `1` |  |
| runtime-pools.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

