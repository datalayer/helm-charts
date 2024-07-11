# iam

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![AppVersion: 0.1.1](https://img.shields.io/badge/AppVersion-0.1.1-informational?style=flat-square)

Datalayer IAM

**Homepage:** <https://datalayer.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <info@datalayer.io> |  |

## Source Code

* <https://github.com/datalayer/services/tree/main/plane/etc/helm/datalayer-iam>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| iam.certificateIssuer | string | `"letsencrypt"` |  |
| iam.clusterType | string | `"any"` |  |
| iam.env.DATALAYER_AUTHZ_ENGINE | string | `""` |  |
| iam.env.DATALAYER_CDN_URL | string | `""` |  |
| iam.env.DATALAYER_CREDITS_PROVIDER | string | `""` |  |
| iam.env.DATALAYER_GITHUB_CLIENT_ID | string | `""` |  |
| iam.env.DATALAYER_GITHUB_CLIENT_SECRET | string | `""` |  |
| iam.env.DATALAYER_IAM_API_KEY | string | `""` |  |
| iam.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| iam.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| iam.env.DATALAYER_JWT_SECRET | string | `""` |  |
| iam.env.DATALAYER_OPENFGA_AUTHZ_MODEL_ID | string | `""` |  |
| iam.env.DATALAYER_OPENFGA_REST_URL | string | `"http://datalayer-openfga.datalayer-openfga.svc.cluster.local:8080"` |  |
| iam.env.DATALAYER_OPENFGA_STORE_ID | string | `""` |  |
| iam.env.DATALAYER_PUB_SUB_ENGINE | string | `"pulsar"` |  |
| iam.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| iam.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| iam.env.DATALAYER_RUN_HOST | string | `""` |  |
| iam.env.DATALAYER_RUN_HOST | string | `""` |  |
| iam.env.DATALAYER_SMTP_HOST | string | `""` |  |
| iam.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| iam.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| iam.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| iam.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| iam.env.DATALAYER_STRIPE_API_KEY | string | `""` |  |
| iam.env.DATALAYER_STRIPE_BILLING_ROUTE | string | `"/usage/billing"` |  |
| iam.env.DATALAYER_STRIPE_JS_API_KEY | string | `""` |  |
| iam.env.DATALAYER_STRIPE_PRODUCT_ID | string | `""` |  |
| iam.env.DATALAYER_STRIPE_WEBHOOK_SECRET | string | `""` |  |
| iam.image | string | `"datalayer/iam:0.1.1"` |  |
| iam.imagePullPolicy | string | `"Always"` |  |
| iam.ingressClass | string | `"datalayer-traefik"` |  |
| iam.port | int | `9700` |  |
| iam.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |

