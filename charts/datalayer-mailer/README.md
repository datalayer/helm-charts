[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-mailer

Datalayer Mailer

![Version: 0.0.2](https://img.shields.io/badge/Version-0.0.2-informational?style=flat-square) ![AppVersion: 0.0.2](https://img.shields.io/badge/AppVersion-0.0.2-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer Tech](https://datalayer.tech).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| mailer.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role.datalayer.io/system"` |  |
| mailer.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| mailer.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| mailer.env.DATALAYER_SMTP_HOST | string | `""` |  |
| mailer.env.DATALAYER_SMTP_PASSWORD | string | `""` |  |
| mailer.env.DATALAYER_SMTP_PORT | string | `"0"` |  |
| mailer.env.DATALAYER_SMTP_USERNAME | string | `""` |  |
| mailer.image | string | `nil` |  |
| mailer.imagePullPolicy | string | `"Always"` |  |
| mailer.namespace | string | `"datalayer-system"` |  |
| mailer.port | int | `2331` |  |

