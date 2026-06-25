[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-operator

Datalayer Operator

![Version: 1.0.20](https://img.shields.io/badge/Version-1.0.20-informational?style=flat-square) ![AppVersion: 1.0.20](https://img.shields.io/badge/AppVersion-1.0.20-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer AI](https://datalayer.ai).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| operator.cloudCredentials.aws.accessKeyId | string | `""` |  |
| operator.cloudCredentials.aws.defaultRegion | string | `""` |  |
| operator.cloudCredentials.aws.secretAccessKey | string | `""` |  |
| operator.cloudCredentials.azure.clientId | string | `""` |  |
| operator.cloudCredentials.azure.clientSecret | string | `""` |  |
| operator.cloudCredentials.azure.resourceGroup | string | `""` |  |
| operator.cloudCredentials.azure.subscriptionId | string | `""` |  |
| operator.cloudCredentials.azure.tenantId | string | `""` |  |
| operator.cloudCredentials.create | bool | `false` |  |
| operator.cloudCredentials.enabled | bool | `false` |  |
| operator.cloudCredentials.secretName | string | `""` |  |
| operator.crds | bool | `true` |  |
| operator.env.AGENT_OP_FEATURES | string | `""` |  |
| operator.env.AWS_ACCESS_KEY_ID | string | `""` |  |
| operator.env.AWS_DEFAULT_REGION | string | `""` |  |
| operator.env.AWS_SECRET_ACCESS_KEY | string | `""` |  |
| operator.env.AZURE_CLIENT_ID | string | `""` |  |
| operator.env.AZURE_CLIENT_SECRET | string | `""` |  |
| operator.env.AZURE_RESOURCE_GROUP | string | `""` |  |
| operator.env.AZURE_SUBSCRIPTION_ID | string | `""` |  |
| operator.env.AZURE_TENANT_ID | string | `""` |  |
| operator.env.DATALAYER_AGENT_CHECKPOINTER_IMAGE | string | `"datalayer/agent-checkpointer:0.0.1"` |  |
| operator.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| operator.env.DATALAYER_AVAILABLE_RUNTIMES_MAX_LIFE_SEC | string | `"3600"` |  |
| operator.env.DATALAYER_CERT_ISSUER | string | `"letsencrypt"` |  |
| operator.env.DATALAYER_CLOUDER_CLUSTER_NAME | string | `""` |  |
| operator.env.DATALAYER_CLOUDER_EXECUTOR_PYTHON_TIMEOUT_SECONDS | string | `"300"` |  |
| operator.env.DATALAYER_CLOUDER_OS_DISK_SIZE_GB | string | `""` |  |
| operator.env.DATALAYER_DOCKER_REGISTRY | string | `""` |  |
| operator.env.DATALAYER_IAM_API_KEY | string | `""` |  |
| operator.env.DATALAYER_IAM_URL | string | `"http://datalayer-iam-svc.datalayer-api.svc.cluster.local:9700"` |  |
| operator.env.DATALAYER_INGRESS_CLASS_NAME | string | `"datalayer-traefik"` |  |
| operator.env.DATALAYER_KAFKA_PASSWORD | string | `""` |  |
| operator.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| operator.env.DATALAYER_KAFKA_USERNAME | string | `""` |  |
| operator.env.DATALAYER_OPERATOR_API_KEY | string | `""` |  |
| operator.env.DATALAYER_OTEL_API_KEY | string | `""` |  |
| operator.env.DATALAYER_PUBSUB_ENGINE | string | `"pulsar"` |  |
| operator.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| operator.env.DATALAYER_RUNTIMES_RUN_HOOKS | string | `"false"` |  |
| operator.env.DATALAYER_URL | string | `""` |  |
| operator.env.DATALAYER_S3_CHECKPOINT_URL | string | `"https://s3.us-west-2.amazonaws.com"` |  |
| operator.env.DATALAYER_SCALING_COMMANDS_DLQ_TOPIC | string | `"operator-scaling-commands-dlq-topic"` |  |
| operator.env.DATALAYER_SCALING_COMMANDS_MAX_REDELIVERIES | string | `"5"` |  |
| operator.env.DATALAYER_SCALING_COMMANDS_RETRY_DELAY_SECONDS | string | `"5"` |  |
| operator.env.DATALAYER_SCALING_COMMANDS_SUBSCRIPTION | string | `"datalayer-operator-scaling"` |  |
| operator.env.DATALAYER_SCALING_COMMANDS_TOPIC | string | `"operator-scaling-commands-topic"` |  |
| operator.env.DATALAYER_SCALING_COOLDOWN_SECONDS | string | `"30"` |  |
| operator.env.DATALAYER_SCALING_DRY_RUN | string | `"true"` |  |
| operator.env.DATALAYER_SCALING_EVENTS_TOPIC | string | `"operator-scaling-events-topic"` |  |
| operator.env.DATALAYER_SCALING_EVENT_DEDUP_SECONDS | string | `"5"` |  |
| operator.env.DATALAYER_SCALING_HISTORY_MAX_EVENTS | string | `"512"` |  |
| operator.env.DATALAYER_SCALING_MAX_NODES | string | `"100"` |  |
| operator.env.DATALAYER_SCALING_MIN_HEADROOM_CPU_MILLIS | string | `"1000"` |  |
| operator.env.DATALAYER_SCALING_MIN_HEADROOM_MEMORY_MB | string | `"1024"` |  |
| operator.env.DATALAYER_SCALING_MIN_NODES | string | `"0"` |  |
| operator.env.DATALAYER_SCALING_PRESSURE_SCALE_DOWN_THRESHOLD | string | `"0"` |  |
| operator.env.DATALAYER_SCALING_PRESSURE_SCALE_UP_THRESHOLD | string | `"1"` |  |
| operator.env.DATALAYER_SCALING_SCALE_DOWN_HEADROOM_MULTIPLIER | string | `"2"` |  |
| operator.env.DATALAYER_SCALING_SCALE_DOWN_MAX_STEP | string | `"1"` |  |
| operator.env.DATALAYER_SCALING_STRATEGY | string | `"simple"` |  |
| operator.env.DATALAYER_SCALING_TICK_INTERVAL_SECONDS | string | `"5"` |  |
| operator.env.DATALAYER_SOLR_CHECKPOINT_COLLECTION | string | `"runtime-checkpoints"` |  |
| operator.env.DATALAYER_SOLR_PASSWORD | string | `""` |  |
| operator.env.DATALAYER_SOLR_USERNAME | string | `""` |  |
| operator.env.DATALAYER_SOLR_ZK_HOST | string | `"solr-datalayer-solrcloud-zookeeper-headless.datalayer-solr.svc.cluster.local:2181"` |  |
| operator.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| operator.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| operator.env.OTEL_EXPORTER_OTLP_LOGS_ENDPOINT | string | `"https://prod1.datalayer.run/api/otel/v1/otlp/v1/logs"` |  |
| operator.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `"https://prod1.datalayer.run/api/otel/v1/otlp/v1/metrics"` |  |
| operator.env.OTEL_EXPORTER_OTLP_PROTOCOL | string | `"http/protobuf"` |  |
| operator.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `"https://prod1.datalayer.run/api/otel/v1/otlp/v1/traces"` |  |
| operator.env.OTEL_PYTHON_LOG_LEVEL | string | `"info"` |  |
| operator.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| operator.image | string | `"datalayer/operator:1.0.20"` |  |
| operator.imagePullPolicy | string | `"Always"` |  |
| operator.kubeletCerts.cert | string | `""` |  |
| operator.kubeletCerts.key | string | `""` |  |
| operator.kubeletCerts.mountPath | string | `"/etc/kubelet-certs"` |  |
| operator.port | int | `2111` |  |
| operator.rbac.annotations | object | `{}` |  |
| operator.rbac.create | bool | `true` |  |
| operator.rbac.serviceAccountName | string | `"datalayer-operator-sa"` |  |
| operator.sharedFsPVC | string | `""` |  |
| operator.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| operator.tolerations | object | `{}` |  |
| operator.volumeMounts | object | `{}` |  |

