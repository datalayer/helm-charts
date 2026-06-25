# datalayer-home

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Datalayer Home - Root redirect to datalayer.ai

**Homepage:** <https://datalayer.ai>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/charts/datalayer-home>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| home.certificateIssuer | string | `"letsencrypt"` |  |
| home.clusterType | string | `"any"` |  |
| home.env.DATALAYER_URL | string | `""` |  |
| home.ingressClass | string | `"datalayer-traefik"` |  |
| home.redirectUrl | string | `"https://datalayer.ai"` |  |

