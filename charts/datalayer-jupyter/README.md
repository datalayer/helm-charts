[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-jupyter

Datalayer Jupyter

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ![AppVersion: 0.1.1](https://img.shields.io/badge/AppVersion-0.1.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer TECH](https://datalayer.tech/docs/build).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| jupyter.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| jupyter.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| jupyter.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| jupyter.certificateIssuer | string | `"letsencrypt"` |  |
| jupyter.clusterType | string | `"any"` |  |
| jupyter.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| jupyter.env.DATALAYER_CDN_URL | string | `""` |  |
| jupyter.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| jupyter.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| jupyter.env.DATALAYER_JWT_ISSUER | string | `"https://id.datalayer.run"` |  |
| jupyter.env.DATALAYER_JWT_SECRET | string | `""` |  |
| jupyter.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| jupyter.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| jupyter.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| jupyter.env.DATALAYER_OPERATOR_API_KEY | string | `""` |  |
| jupyter.env.DATALAYER_OPERATOR_HOST | string | `"datalayer-operator-svc.datalayer-api.svc.cluster.local:2111"` |  |
| jupyter.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| jupyter.env.DATALAYER_RUN_HOST | string | `""` |  |
| jupyter.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| jupyter.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| jupyter.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| jupyter.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| jupyter.envValueFrom.DATALAYER_SOLR_PASSWORD.secretKeyRef.key | string | `"password"` |  |
| jupyter.envValueFrom.DATALAYER_SOLR_PASSWORD.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| jupyter.envValueFrom.DATALAYER_SOLR_USERNAME.secretKeyRef.key | string | `"username"` |  |
| jupyter.envValueFrom.DATALAYER_SOLR_USERNAME.secretKeyRef.name | string | `"solr-basic-auth"` |  |
| jupyter.image | string | `"datalayer/jupyter:0.1.1"` |  |
| jupyter.imagePullPolicy | string | `"Always"` |  |
| jupyter.ingressClass | string | `"datalayer-traefik"` |  |
| jupyter.port | int | `9500` |  |
| jupyter.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| jupyter.tolerations | object | `{}` |  |

