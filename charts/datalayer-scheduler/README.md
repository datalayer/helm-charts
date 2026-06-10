# datalayer-scheduler

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

Datalayer Scheduler

**Homepage:** <https://datalayer.ai>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/charts/datalayer-scheduler>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| scheduler.certificateIssuer | string | `"letsencrypt"` |  |
| scheduler.clusterType | string | `"any"` |  |
| scheduler.env.DATALAYER_CORS_ORIGIN | string | `"*"` |  |
| scheduler.env.DATALAYER_IAM_SERVICE_URL | string | `"http://datalayer-iam-svc.datalayer-api.svc.cluster.local:9700"` |  |
| scheduler.env.DATALAYER_JWT_ALGORITHM | string | `""` |  |
| scheduler.env.DATALAYER_JWT_CACHE_VALIDATE | string | `"false"` |  |
| scheduler.env.DATALAYER_JWT_ISSUER | string | `""` |  |
| scheduler.env.DATALAYER_JWT_SECRET | string | `""` |  |
| scheduler.env.DATALAYER_OTEL_API_KEY | string | `""` |  |
| scheduler.env.DATALAYER_RUNTIME_ENV | string | `"prod"` |  |
| scheduler.env.DATALAYER_RUNTIMES_SERVICE_URL | string | `"http://datalayer-runtimes-svc.datalayer-api.svc.cluster.local:9500"` |  |
| scheduler.env.DATALAYER_RUN_URL | string | `""` |  |
| scheduler.env.DATALAYER_SCHEDULER_EXEC_TIMEOUT_SECONDS | string | `"300"` |  |
| scheduler.env.DATALAYER_SCHEDULER_INTERVAL_SECONDS | string | `"10"` |  |
| scheduler.env.DATALAYER_SCHEDULER_RUNTIME_CREDITS_FRACTION | string | `"0.5"` |  |
| scheduler.env.DATALAYER_SCHEDULER_RUNTIME_ENVIRONMENT | string | `"ai-agents-env"` |  |
| scheduler.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local"` |  |
| scheduler.env.DATALAYER_SPACER_SERVICE_URL | string | `"http://datalayer-spacer-svc.datalayer-api.svc.cluster.local:9900"` |  |
| scheduler.env.OTEL_EXPORTER_OTLP_LOGS_ENDPOINT | string | `"http://datalayer-otel-otel-collector-svc.datalayer-otel.svc.cluster.local:4317"` |  |
| scheduler.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `"http://datalayer-otel-otel-collector-svc.datalayer-otel.svc.cluster.local:4317"` |  |
| scheduler.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `"http://datalayer-otel-otel-collector-svc.datalayer-otel.svc.cluster.local:4317"` |  |
| scheduler.env.OTEL_PYTHON_LOG_LEVEL | string | `"info"` |  |
| scheduler.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| scheduler.image | string | `"datalayer/scheduler:0.0.1"` |  |
| scheduler.imagePullPolicy | string | `"Always"` |  |
| scheduler.ingressClass | string | `"datalayer-traefik"` |  |
| scheduler.port | int | `9920` |  |
| scheduler.resources | object | `{}` |  |

