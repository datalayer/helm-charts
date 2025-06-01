# jump

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

Datalayer Jump

**Homepage:** <https://datalayer.tech>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/charts/datalayer-jump>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| jump.env.DATALAYER_RUN_URL | string | `""` |  |
| jump.image | string | `"datalayer/jump:0.0.6"` |  |
| jump.imagePullPolicy | string | `"Always"` |  |
| jump.port | int | `2223` |  |
| jump.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

