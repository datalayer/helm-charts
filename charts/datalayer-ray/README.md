# datalayer-ray

Helm chart deploying:

- `datalayer-ray` addon API service
- KubeRay operator (dependency, optional but enabled by default)
- Optional default `RayCluster` bootstrap object

## Notes

- The chart creates RBAC for Ray CRDs and Kubernetes resources needed for job monitoring (`pods`, `pods/log`, `events`).
- Health probes are enabled on `/healthz`.
- Authentication is enforced by the addon on all API endpoints except `/healthz`.
- Configure authentication environment variables through `ray.env` / `ray.envValueFrom` (for example JWT/IAM-related settings in your cluster).
- Ingress supports cert-manager TLS using `ray.certificateIssuer`, with TLS secret defaulting to `<release>-cert-secret`.
- `plane up datalayer-ray` derives ingress host from `DATALAYER_RUN_URL`.
- Bootstrap RayCluster worker autoscaling is enabled by default via `spec.enableInTreeAutoscaling=true` with worker bounds from `bootstrapRayCluster.worker.minReplicas` and `bootstrapRayCluster.worker.maxReplicas`.
