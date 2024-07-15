# jupyterpool

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

Jupyterpool

**Homepage:** <https://datalayer.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/datalayer-jupyterpool>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| jupyterpool.env.DATALAYER_RUN_HOST | string | `""` |  |
| jupyterpool.env.GITHUB_CLIENT_ID | string | `""` |  |
| jupyterpool.env.GITHUB_CLIENT_SECRET | string | `""` |  |
| jupyterpool.env.GITHUB_OAUTH_CALLBACK_URL | string | `""` |  |
| jupyterpool.extraEnvVars | list | `[]` |  |
| jupyterpool.image | string | `"datalayer/jupyterpool:0.0.8"` |  |
| jupyterpool.imagePullPolicy | string | `"IfNotPresent"` |  |
| jupyterpool.port | int | `2300` |  |
| jupyterpool.replicaCount | int | `1` |  |
| jupyterpool.service.name | string | `"jupyterpool"` |  |
| jupyterpool.service.type | string | `"LoadBalancer"` |  |
| jupyterpool.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
