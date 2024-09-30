# datalayer-storage

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

Datalayer Storage

**Homepage:** <https://datalayer.tech>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Datalayer | <support@datalayer.io> | <https://datalayer.io> |

## Source Code

* <https://github.com/datalayer/helm-charts/tree/main/charts/datalayer-ceph-storage>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cephStorage.storageClassName | string | `"ceph-filesystem"` |  |
| cephStorage.storageOwner.gid | string | `"100"` |  |
| cephStorage.storageOwner.uid | string | `"1000"` |  |
| cephStorage.usersPVC | string | `"cephfs-users-pvc"` |  |

