# Datalayer Home Helm Chart

This chart deploys the root redirect for the Datalayer platform, sending `/` requests to [datalayer.ai](https://datalayer.ai).

## Configuration

| Parameter | Description | Default |
|-----------|-------------|---------|
| `home.clusterType` | Cluster type (`any` to enable) | `any` |
| `home.certificateIssuer` | Cert-manager issuer | `letsencrypt` |
| `home.ingressClass` | Ingress class | `datalayer-traefik` |
| `home.redirectUrl` | URL to redirect `/` to | `https://datalayer.ai` |
| `home.env.DATALAYER_RUN_URL` | The run URL (host is derived from this) | `""` |
