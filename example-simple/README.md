# datalayer-simple

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

Datalaeyr Simple Helm Chart Example

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| api.address | string | `"simple-address"` |  |
| api.password | string | `"simple_password"` |  |
| api.secretName | string | `"simple-secret"` |  |
| api.secretNamespace | string | `"simple"` |  |
| api.username | string | `"datalayer"` |  |
| namespace | string | `"datalayer-simple"` |  |
| service.name | string | `"simple-svc"` |  |
| service.type | string | `"NodePort"` |  |
| simple.image | string | `"datalayer/example-simple:0.0.6"` |  |
| simpleSecretName | string | `"simple-secret"` |  |

