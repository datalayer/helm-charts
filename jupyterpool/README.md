[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# Datalayer Jupyterpool Helm Chart

```bash
export RELEASE=jupyterpool
export NAMESPACE=datalayer
helm upgrade \
  --install $RELEASE \
  $DATALAYER_HOME/etc/helm/jupyterpool \
  --namespace $NAMESPACE \
  --timeout 99999s
```

```bash
export POD_NAME=$(kubectl get pods -n datalayer -l "app=jupyterpool" -o jsonpath="{.items[0].metadata.name}")
echo https://127.0.0.1:2300
kubectl -n datalayer port-forward $POD_NAME 2300:2300
```

```bash
helm delete $RELEASE --purge && \
  kubectl delete namespace $NAMESPACE
```
