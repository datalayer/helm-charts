# jupyter-server

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

Jupyter Server

**Homepage:** <https://datalayer.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <info@datalayer.io> |  |

## Source Code

* <https://github.com/datalayer/services/tree/main/plane/etc/helm/datalayer-jupyter-server>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| server.env.DATALAYER_RUN_HOST | string | `""` |  |
| server.env.GITHUB_CLIENT_ID | string | `""` |  |
| server.env.GITHUB_CLIENT_SECRET | string | `""` |  |
| server.env.GITHUB_OAUTH_CALLBACK_URL | string | `""` |  |
| server.extraEnvVars | list | `[]` |  |
| server.image | string | `"datalayer/jupyter-server:0.0.8"` |  |
| server.imagePullPolicy | string | `"IfNotPresent"` |  |
| server.port | int | `8888` |  |
| server.replicaCount | int | `1` |  |
| server.service.name | string | `"jupyter-server"` |  |
| server.service.type | string | `"LoadBalancer"` |  |
| server.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

