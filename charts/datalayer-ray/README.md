# datalayer-ray

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

Datalayer Ray addon + KubeRay operator integration

**Homepage:** <https://datalayer.ai>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://ray-project.github.io/kuberay-helm/ | kuberay-operator | 1.3.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| bootstrapRayCluster.autoscaling.enabled | bool | `true` |  |
| bootstrapRayCluster.enabled | bool | `false` |  |
| bootstrapRayCluster.image | string | `"rayproject/ray:2.38.0"` |  |
| bootstrapRayCluster.name | string | `"raycluster"` |  |
| bootstrapRayCluster.namespace | string | `"default"` |  |
| bootstrapRayCluster.rayVersion | string | `"2.38.0"` |  |
| bootstrapRayCluster.worker.maxReplicas | int | `3` |  |
| bootstrapRayCluster.worker.minReplicas | int | `1` |  |
| bootstrapRayCluster.worker.replicas | int | `1` |  |
| kuberayOperator.enabled | bool | `true` |  |
| namespace | string | `"datalayer-api"` |  |
| ray.certificateIssuer | string | `"letsencrypt"` |  |
| ray.env.DATALAYER_RAY_PUBLIC_URL | string | `"https://prod1.datalayer.run"` |  |
| ray.env.DATALAYER_RUNTIMES_API_KEY | string | `""` |  |
| ray.env.DATALAYER_RUNTIMES_URL | string | `"https://r1.datalayer.run"` |  |
| ray.envValueFrom | object | `{}` |  |
| ray.image | string | `"datalayer/ray:0.0.1"` |  |
| ray.imagePullPolicy | string | `"Always"` |  |
| ray.ingress.className | string | `"traefik"` |  |
| ray.ingress.enabled | bool | `false` |  |
| ray.ingress.host | string | `"ray.local"` |  |
| ray.ingress.tlsSecretName | string | `""` |  |
| ray.port | int | `4460` |  |
| ray.registryCredentialsSecret | string | `"reg-creds"` |  |
| ray.replicas | int | `1` |  |
| ray.resources.limits.cpu | string | `"1000m"` |  |
| ray.resources.limits.memory | string | `"1Gi"` |  |
| ray.resources.requests.cpu | string | `"250m"` |  |
| ray.resources.requests.memory | string | `"256Mi"` |  |
| ray.serviceAccount.create | bool | `true` |  |
| ray.serviceAccount.name | string | `""` |  |
| ray.serviceType | string | `"ClusterIP"` |  |

