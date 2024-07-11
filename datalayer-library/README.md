# library

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

Datalayer Library

**Homepage:** <https://datalayer.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <info@datalayer.io> |  |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/datalayer-library>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| library.env.AWS_ACCESS_KEY_ID | string | `""` |  |
| library.env.AWS_DEFAULT_REGION | string | `""` |  |
| library.env.AWS_SECRET_ACCESS_KEY | string | `""` |  |
| library.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| library.env.DATALAYER_CDN_URL | string | `""` |  |
| library.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| library.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| library.env.DATALAYER_JWT_SECRET | string | `""` |  |
| library.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| library.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| library.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| library.env.DATALAYER_RUN_HOST | string | `""` |  |
| library.env.DATALAYER_SMTP_HOST | string | `""` |  |
| library.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| library.env.DATALAYER_SMTP_PORT | string | `""` |  |
| library.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| library.env.DATALAYER_SOLR_ZK_HOST | string | `""` |  |
| library.image | string | `"datalayer/library:0.0.6"` |  |
| library.imagePullPolicy | string | `"IfNotPresent"` |  |
| library.port | int | `9800` |  |
| library.service.name | string | `"library"` |  |
| library.service.type | string | `"LoadBalancer"` |  |
| library.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

