[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# datalayer-filesystem

Datalayer Filesystem

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Documentation

For full documentation please checkout [Datalayer AI](https://datalayer.ai).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| sharedStorage.aws.fileSystemId | string | `nil` | AWS EFS filesystem id used by aws-efs StorageClass. Auto-populated by plane up datalayer-shared-filesystem on kubeadm/AWS. |
| sharedStorage.aws.gid | string | `"0"` | POSIX gid enforced by EFS Access Points created dynamically. Set to "0" to allow prepare pod chown operations. |
| sharedStorage.aws.uid | string | `"0"` | POSIX uid enforced by EFS Access Points created dynamically. Set to "0" to allow prepare pod chown operations. |
| sharedStorage.shareName | string | `"datalayer-shared-filesystem"` | Specify Azure file share name (applicable for storageProvider being 'azure'). Existing or new Azure file share name. If empty, driver generates an Azure file share name. |
| sharedStorage.sharedFsPVC | string | `"shared-fs-pvc"` |  |
| sharedStorage.storageClassName | string | `nil` | Storage class to use If not specified the default value will be inferred from the provider. |
| sharedStorage.storageOwner.gid | string | `"100"` |  |
| sharedStorage.storageOwner.uid | string | `"1000"` |  |
| sharedStorage.storageProvider | string | `"ceph"` | Will set automatically value depending on the storage provider. Supported values are: "azure", "aws", or "ceph" |
| sharedStorage.storageSize | string | `nil` | Storage size If not specified the default value will be inferred from the provider. |

