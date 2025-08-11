[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-operator

Datalayer Operator

![Version: 1.0.17](https://img.shields.io/badge/Version-1.0.17-informational?style=flat-square) ![AppVersion: 1.0.19](https://img.shields.io/badge/AppVersion-1.0.19-informational?style=flat-square)

## Security

This Helm chart implements secure RBAC (Role-Based Access Control) practices:

- **Dedicated ServiceAccount**: Uses a dedicated `datalayer-operator-sa` ServiceAccount instead of the default ServiceAccount, following CIS Kubernetes Benchmark 5.1.5
- **Restricted Permissions**: Uses a custom ClusterRole with minimal required permissions instead of cluster-admin, following CIS Kubernetes Benchmark 5.1.1
- **Least Privilege**: Grants only the necessary permissions for managing Jupyter workloads and custom resources

### RBAC Configuration

The operator requires the following permissions:
- **Core resources**: pods, services, configmaps, secrets, persistentvolumeclaims, events
- **Apps resources**: deployments, statefulsets, daemonsets, replicasets  
- **Networking**: ingresses, networkpolicies
- **Custom resources**: jupyterpools, jupyter-contents, jupyter-environments
- **CRD management**: customresourcedefinitions
- **Limited RBAC**: roles, rolebindings (for namespace-scoped permissions)
- **Read-only access**: namespaces, nodes (for discovery and scheduling)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/api"` |  |
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| operator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| operator.crds | bool | `true` |  |
| operator.rbac.create | bool | `true` | Create RBAC resources (ServiceAccount, ClusterRole, ClusterRoleBinding) |
| operator.rbac.serviceAccountName | string | `"datalayer-operator-sa"` | Name of the ServiceAccount to create |
| operator.env.AWS_ACCESS_KEY_ID | string | `""` |  |
| operator.env.AWS_DEFAULT_REGION | string | `""` |  |
| operator.env.AWS_SECRET_ACCESS_KEY | string | `""` |  |
| operator.env.DATALAYER_AUTHZ_ENGINE | string | `"openfga"` |  |
| operator.env.DATALAYER_AVAILABLE_RUNTIMES_MAX_LIFE_SEC | string | `"3600"` |  |
| operator.env.DATALAYER_CERT_ISSUER | string | `"letsencrypt"` |  |
| operator.env.DATALAYER_DOCKER_REGISTRY | string | `""` |  |
| operator.env.DATALAYER_IAM_API_KEY | string | `""` |  |
| operator.env.DATALAYER_IAM_HOST | string | `"datalayer-iam-svc.datalayer-api.svc.cluster.local:9700"` |  |
| operator.env.DATALAYER_INGRESS_CLASS_NAME | string | `"datalayer-traefik"` |  |
| operator.env.DATALAYER_KAFKA_PASSWORD | string | `""` |  |
| operator.env.DATALAYER_KAFKA_URL | string | `"datalayer-kafka-kafka-bootstrap.datalayer-kafka.svc.cluster.local:9092"` |  |
| operator.env.DATALAYER_KAFKA_USERNAME | string | `""` |  |
| operator.env.DATALAYER_OPERATOR_API_KEY | string | `""` |  |
| operator.env.DATALAYER_PUB_SUB_ENGINE | string | `"kafka"` |  |
| operator.env.DATALAYER_PULSAR_URL | string | `"pulsar://datalayer-pulsar-broker.datalayer-pulsar.svc.cluster.local:6650"` |  |
| operator.env.DATALAYER_RUNTIMES_RUN_HOOKS | string | `"false"` |  |
| operator.env.DATALAYER_RUN_URL | string | `""` |  |
| operator.env.DATALAYER_VAULT_TOKEN | string | `""` |  |
| operator.env.DATALAYER_VAULT_URL | string | `"http://datalayer-vault-internal.datalayer-vault.svc.cluster.local:8200"` |  |
| operator.env.OTEL_EXPORTER_OTLP_METRICS_ENDPOINT | string | `""` |  |
| operator.env.OTEL_EXPORTER_OTLP_TRACES_ENDPOINT | string | `""` |  |
| operator.env.OTEL_SDK_DISABLED | string | `"false"` |  |
| operator.image | string | `"datalayer/operator:1.0.19"` |  |
| operator.imagePullPolicy | string | `"Always"` |  |
| operator.port | int | `2111` |  |
| operator.sharedFsPVC | string | `""` |  |
| operator.sidecar.image | string | `"datalayer/whoami:0.0.6"` |  |
| operator.tolerations | object | `{}` |  |
| operator.volumeMounts | object | `{}` |  |

