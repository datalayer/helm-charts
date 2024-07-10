[![Datalayer](https://assets.datalayer.tech/datalayer-25.svg)](https://datalayer.io)

# Datalayer Jupyter Server Helm Chart

```bash
export RELEASE=jupyter-server
export NAMESPACE=datalayer
helm upgrade \
  --install $RELEASE \
  $DATALAYER_HOME/etc/helm/jupyter-server \
  --namespace $NAMESPACE \
  --timeout 99999s
```

```bash
export POD_NAME=$(kubectl get pods -n datalayer -l "app=jupyter-server" -o jsonpath="{.items[0].metadata.name}")
echo https://127.0.0.1:8888
kubectl -n datalayer port-forward $POD_NAME 8888:8888
```

```bash
helm delete $RELEASE --purge && \
  kubectl delete namespace $NAMESPACE
```
