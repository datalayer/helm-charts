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
| jump.env.AWS_ACCESS_KEY_ID | string | `""` |  |
| jump.env.AWS_DEFAULT_REGION | string | `""` |  |
| jump.env.AWS_SECRET_ACCESS_KEY | string | `""` |  |
| jump.env.DATALAYER_CDN_URL | string | `""` |  |
| jump.env.DATALAYER_JWT_SECRET | string | `""` |  |
| jump.env.DATALAYER_KEYCLOAK_REALM_CLIENT_SECRET | string | `""` |  |
| jump.env.DATALAYER_KEYCLOAK_SCHEME_HOST | string | `""` |  |
| jump.env.DATALAYER_LDAP_BIND | string | `""` |  |
| jump.env.DATALAYER_LDAP_BIND_PWD | string | `""` |  |
| jump.env.DATALAYER_LDAP_HOST | string | `""` |  |
| jump.env.DATALAYER_RUN_HOST | string | `""` |  |
| jump.env.DATALAYER_SMTP_HOST | string | `""` |  |
| jump.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| jump.env.DATALAYER_SMTP_PORT | string | `""` |  |
| jump.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| jump.env.DATALAYER_SOLR_ZK_HOST | string | `""` |  |
| jump.image | string | `"datalayer/jump:0.0.6"` |  |
| jump.imagePullPolicy | string | `"Always"` |  |
| jump.port | int | `2223` |  |
| jump.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

