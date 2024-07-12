# datalayer-jupyter

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![AppVersion: 0.1.1](https://img.shields.io/badge/AppVersion-0.1.1-informational?style=flat-square)

Datalayer Jupyter

**Homepage:** <https://datalayer.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> |  |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/datalayer-jupyter>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| jupyter.certificateIssuer | string | `"letsencrypt"` |  |
| jupyter.clusterType | string | `"any"` |  |
| jupyter.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| jupyter.env.DATALAYER_CDN_URL | string | `""` |  |
| jupyter.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| jupyter.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| jupyter.env.DATALAYER_JWT_SECRET | string | `""` |  |
| jupyter.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| jupyter.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| jupyter.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| jupyter.env.DATALAYER_OPERATOR_API_KEY | string | `""` |  |
| jupyter.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| jupyter.env.DATALAYER_RUN_HOST | string | `""` |  |
| jupyter.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| jupyter.image | string | `"datalayer/jupyter:0.1.1"` |  |
| jupyter.imagePullPolicy | string | `"Always"` |  |
| jupyter.ingressClass | string | `"datalayer-traefik"` |  |
| jupyter.port | int | `9500` |  |
| jupyter.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

