# JupyterHub

```bash
# https://github.com/jupyterhub/helm-chart
# https://hub.jupyter.org/helm-chart
# https://z2jh.jupyter.org
helm repo add jupyterhub https://jupyterhub.github.io/helm-chart
helm repo update
```

```bash
export RELEASE=jupyterhub
export NAMESPACE=datalayer-jupyterhub
```

```bash
# Create the values.
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  baseUrl: /api/jupyterhub
  image:
    name: quay.io/jupyterhub/k8s-hub
    tag: 4.0.0
  allowNamedServers: true
  config:
    JupyterHub:
      authenticator_class: dummy
    Authenticator:
      allowed_users:
        - eric
      admin_users:
        - admin
    DummyAuthenticator:
      password: '123'
#  extraConfig:
#    jupyterlab: |
#      c.Spawner.cmd = ['jupyter-labhub']
singleuser:
  image:
    name: quay.io/jupyterhub/k8s-singleuser-sample
    tag: 4.0.0
ingress:
  enabled: true
  ingressClassName: datalayer-traefik
#  pathSuffix: (/|$)(.*)
  hosts:
    - ${DATALAYER_RUN_HOST}
""" > ./jupyterhub.yaml
```

```bash
# Deploy the Helm Chart.
helm upgrade \
  --install $RELEASE \
  jupyterhub/jupyterhub \
  --create-namespace \
  --namespace $NAMESPACE \
  --timeout 5m \
  --version 4.0.0 \
  --values ./jupyterhub.yaml
```

```bash
# Check the deployment.
helm ls -n $NAMESPACE
kubectl get pods -n $NAMESPACE -w
# hub-5474b656cf-22xp6     1/1     Running   0          2m39s
# proxy-6c766577b6-vqkxk   1/1     Running   0          2m39s
kubectl get svc -n $NAMESPACE
# hub            ClusterIP      10.111.230.197   <none>        8081/TCP                     2m43s
# proxy-api      ClusterIP      10.102.103.51    <none>        8001/TCP                     2m43s
# proxy-public   LoadBalancer   10.107.139.195   <pending>     80:30893/TCP,443:30125/TCP   2m43s
```

```bash
# Connect via browser.
# Authenticate with eric / 123 and use the notebook.
# Use the JupyterHub Admin Panel to add Users (you must be an admin for this in docker > hub > userlist).
# Go the the control panel then navigate to "Admin". Here you can add and remove users and even access their servers.
open http://$DATALAYER_RUN_HOST
open http://$DATALAYER_RUN_HOST/api/jupyterhub/hub/user-redirect
```

```bash
# Delete Deployment.
helm delete $RELEASE -n $NAMESPACE
kubectl delete namespace $NAMESPACE
```

## Examples

```bash
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  baseUrl: /api/jupyterhub
  extraConfig:
    jupyterlab: |
      c.Spawner.default_url = '/lab'
auth:
  type: dummy
  dummy:
    password: '123'
  whitelist:
    users:
      - eric
singleuser:
  image:
    name: quay.io/jupyterhub/singleuser
    tag: 5.2.1
ingress:
  enabled: true
  pathSuffix: (/|$)(.*)
  hosts:
    - minikube.local
""" > ./jupyterhub.yaml
```

```bash
proxy:
  secretToken: 
hub:
  baseUrl: /api/jupyterhub
  extraConfig:
    jupyterlab: |
      c.Spawner.default_url = '/lab'
auth:
  type: dummy
  dummy:
    password: '123'
  whitelist:
    users:
      - eric
singleuser:
  image:
    name: datalayer-exp/jupyter-server-proxy
    tag: 0.0.1
ingress:
  enabled: true
  pathSuffix: (/|$)(.*)
  hosts:
    - minikube.local
```

```bash
# Proxy Configuration
# open http://minikube.local/api/jupyterhub/hub/user-redirect/proxy-server
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  baseUrl: /api/jupyterhub
  extraConfig:
    jupyterlab: |
      c.Spawner.default_url = '/lab'
auth:
  type: dummy
  dummy:
    password: '123'
  whitelist:
    users:
      - eric
singleuser:
  image:
    name: datalayer-exp/jupyter-server-proxy-k8s
    tag: 0.0.1
ingress:
  enabled: true
  pathSuffix: (/|$)(.*)
  hosts:
    - minikube.local
""" > ./jupyterhub.yaml
```

```yaml
extraEnv:
    JUPYTERHUB_SINGLEUSER_APP: 'jupyter_server.serverapp.ServerApp'
ingress:
    enabled: true
    pathSuffix: (/|$)(.*)
    hosts:
    - jupyterhub.minikube.local
```

```bash
# HMac Auth
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  baseUrl: /api/jupyterhub
  allowNamedServers: true
  config:
    JupyterHub:
      authenticator_class: hmac
    Authenticator:
      allowed_users:
        - 'eric'
      admin_users:
        - datalayer
    HMACAuthenticator:
      secretKey: '8207381c49ef0381ed8eeccdc8d980d4ed4e53f39637688dcbf66bc31238a86a'
singleuser:
  image:
    name: jupyter/scipy-notebook
    tag: 2023-07-11
  defaultUrl: /lab
  extraEnv:
    JUPYTERHUB_SINGLEUSER_APP: 'jupyter_server.serverapp.ServerApp'
ingress:
  enabled: true
#  pathSuffix: (/|$)(.*)
  hosts:
    - minikube.local
""" > ./jupyterhub.yaml
```

```python
# pip install jupyterhub-hmacauthenticator
import hashlib, hmac
username='eric'
secret_key_hex='8207381c49ef0381ed8eeccdc8d980d4ed4e53f39637688dcbf66bc31238a86a'
secret_key = bytearray.fromhex(secret_key_hex)
password = hmac.new(secret_key, username.encode('utf-8'), hashlib.sha512).hexdigest()
password
# 3c6a9c701468db1af65fb14eee09b13ecb2a54f8d32bd93c3e82e9e723271d03a2b9c7600c822a49f59d7d9e19406e1a0f26f2a606efa4a4f93fe38118c09898
```

```bash
# Root Auth.
echo """
singleuser:
  cmd: start-jupyterlab-rtc.sh
  image:
    name: datalayer/jupyterlab-rtc
    tag: 0.1.0
  uid: 0
  extraEnv:
    GRANT_SUDO: "yes"
    NOTEBOOK_ARGS: "--allow-root"
    JUPYTERHUB_SINGLEUSER_APP: "jupyter_server.serverapp.ServerApp"
""" > ./jupyterhub.yaml
```

```bash
# RTC
export GITHUB_OAUTH_CALLBACK_URL_DEV=http://minikube.local/api/jupyterhub/hub/oauth_callback
cat <<EOF > jupyterhub.yaml
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  baseUrl: /api/jupyterhub
  cookieSecret: $(openssl rand -hex 32)
  image:
    name: datalayer/dsp-jupyerhub-hub
    tag: 0.0.3
    pullPolicy: IfNotPresent
  config:
    JupyterHub:
      authenticator_class: github
    Authenticator:
      admin_users:
        - eric
    GitHubOAuthenticator:
      client_id: ${GITHUB_CLIENT_ID_DEV}
      client_secret: ${GITHUB_CLIENT_SECRET_DEV}
      oauth_callback_url: ${GITHUB_OAUTH_CALLBACK_URL_DEV}
  allowNamedServers: true
  extraConfig:
    jupyterlab.py: |
      c.Spawner.default_url = '/lab'
      c.KubeSpawner.args = [
        '--LabApp.dev_mode=True',
        '--ServerProxy.servers={\'jupyter_rtc_proxy\':{\'port\':4321,\'command\':[\'node\',\'/jupyter/rtc/automerge/packages/server/src/AutomergeServer.js\'],\'absolute_url\':False}}',
      ]
      c.ServerApp.jpserver_extensions = {
        'jupyterlab': True,
        'jupyter_rtc': True,
        'jupyter_auth': True,
      }
      c.ServerApp.allow_origin = "*"
      c.ServerApp.token = ""
      c.ServerProxy.servers = {
        'jupyter_rtc_proxy': {
          'port': 4321,
          'command': ['node', '/jupyter/rtc/automerge/packages/server/src/AutomergeServer.js'],
          'absolute_url': False
        }
      }
singleuser:
  image:
    name: datalayer/sharebook-rtc
    tag: 0.0.3
  extraEnv:
    JUPYTERHUB_SINGLEUSER_APP: 'jupyter_server.serverapp.ServerApp'
ingress:
  enabled: true
  hosts:
    - minikube.local
cull:
  enabled: true
EOF
```

```bash
# Single User
# export DOCKER_REPO=localhost:5000
export DOCKER_REPO=datalayer
echo """
hub:
  image:
    name: $DOCKER_REPO/jupyterhub
    tag: ${DATALAYER_VERSION}
  imagePullPolicy: Always
  extraEnv:
    JUPYTER_ENABLE_LAB: 1
  extraConfig: |
    c.KubeSpawner.cmd = [\"jupyter-labhub\"]
auth:
  admin:
    users:
      - eric
      - admin
proxy:
  secretToken: \"$(openssl rand -hex 32)\"
  chp:
    image:
      name: ${DOCKER_REPO}/jupyterhub-http-proxy
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
prePuller:
  hook:
    image:
      name: ${DOCKER_REPO}/jupyterhub-image-awaiter
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
singleuser:
  networkTools:
    image:
      name: ${DOCKER_REPO}/jupyterhub-network-tools
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
  defaultUrl: \"/lab\"
  image:
    name: ${DOCKER_REPO}/jupyterlab
    tag: ${DATALAYER_VERSION}
  imagePullPolicy: Always
  cpu:
    limit: .5
    guarantee: .5
  memory:
    limit: 200M
    guarantee: 200M
  lifecycleHooks:
    postStart:
      exec:
        command: [\"gitpuller\", \"https://github.com/data-8/materials-fa17\", \"master\", \"materials-fa\"]
#        command: [\"sh\", \"-C\", \"/datalayer/init.sh\"]
  storage:
    capacity: 10Mi
cull:
  podCuller:
    image:
      name: ${DOCKER_REPO}/jupyterhub-pod-culler
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
""" > ./jupyterhub.yaml
```

```bash
# Config 1
echo """
proxy:
  secretToken: \"$(openssl rand -hex 32)\"
singleuser:
  defaultUrl: \"/lab\"
  image:
    name: jupyter/scipy-notebook
    tag: 1085ca054a5f
    pullPolicy: Always
  cpu:
    limit: .5
    guarantee: .5
  memory:
    limit: 1G
    guarantee: 1G
  storage:
    capacity: 1Gi
#     type: none
#     dynamic:
#       storageClass: <storageclass-name>
hub:
  extraEnv:
    JUPYTER_ENABLE_LAB: 1
#  extraConfig: |
#    c.KubeSpawner.cmd = [\"jupyter-labhub\"]
  imagePullPolicy: Always
cull:
  enabled: \"true\"
  users: \"true\"
auth:
  admin:
    users:
      - admineric
      - adminuser2
# rbac:
#    enabled: false
# lifecycleHooks:
#   postStart:
#     exec:
#       command: [\"gitpuller\", \"https://github.com/datalayer-contrib/data8-course-2017\", \"master\", \"materials-fa\"]
# ingress:
#   enabled: true
#   hosts:
#     - <hostname>
#   annotations:
#     kubernetes.io/tls-acme: "true"
#   tls:
#    - hosts:
#       - <hostname>
#      secretName: kubelego-tls-jupyterhub
""" > ./jupyterhub.yaml
```

```bash
# Config 2
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
  service:
    type: NodePort
    nodePorts:
      http: 31212
  chp:
    resources:
      requests:
        memory: 0
        cpu: 0
hub:
  cookieSecret: $(openssl rand -hex 32)
  db:
    type: sqlite-memory
  resources:
    requests:
      memory: 0
      cpu: 0
  services:
    test:
      admin: true
      apiToken: $(openssl rand -hex 32)
singleuser:
  storage:
    type: none
  memory:
    guarantee: null
prePuller:
  hook:
    enabled: false
scheduling:
  userScheduler:
    enabled: true
debug:
  enabled: true
""" > ./jupyterhub.yaml
```

```bash
# AWS
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
  https:
    enabled: true
    type: offload
    hosts:
      - HOSTNAME
  service:
    labels:
      dns: 'route53'
    targetPorts:
      http: tcp
#      https: ssl
    annotations:
      nginx.ingress.kubernetes.io/ssl-redirect: 'true'
      nginx.ingress.kubernetes.io/force-ssl-redirect: 'true'
      nginx.ingress.kubernetes.io/proxy-read-timeout: '3600'
      nginx.ingress.kubernetes.io/proxy-send-timeout: '3600'
#      service.beta.kubernetes.io/aws-load-balancer-ssl-cert: arn:aws:acm:ap-northeast-2:AWS_ACCOUNT_ID:certificate/CERTIFICATE_ID
      service.beta.kubernetes.io/aws-load-balancer-backend-protocol: 'tcp'
#      service.beta.kubernetes.io/aws-load-balancer-ssl-ports: '443'
      service.beta.kubernetes.io/aws-load-balancer-connection-idle-timeout: '3600'
      domainName: 'HOSTNAME'
hub:
  extraConfig:
    jupyterlab: |
      c.Spawner.cmd = ['jupyter-labhub']
singleuser:
  image:
    name: jupyter/scipy-notebook
    tag: 82d1d0bf0867
  serviceAccountName: default
  cloudMetadata:
    enabled: true
  extraAnnotations:
    iam.amazonaws.com/role: kubeadm_role
  profileList:
    - display_name: 'Big Data environment.'
      description: 'If you want the additional bells and whistles'.
      image: datalayer/sparklab:0.0.1
      kubespawner_override:
#        service_account: 'default'
        cpu_limit: 3
        cpu_guarantee: 1
        mem_limit: '2G'
        mem_guarantee: '512M'
        extra_resource_limits: {}
    - display_name: 'Minimal environment.'
      description: 'To avoid too much bells and whistles: Python.'
      default: true
      kubespawner_override:
        image: jupyter/scipy-notebook:82d1d0bf0867
        lifecycle_hooks:
          postStart:
            exec:
              command:
                - "sh"
                - "-c"
                - >
                  gitpuller https://github.com/data-8/materials-fa17
auth:
  type: dummy
  dummy:
    password: 'p123'
  whitelist:
    users:
      - u123
ingress:
  enabled: 'true'
  annotations:
    kubernetes.io/ingress.class: nginx
  hosts:
  - HOSTNAME
""" > ./jupyterhub.yaml
```


```bash
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  extraConfig: |
    c.JupyterHub.allow_named_servers = True
    jupyterlab: |
      c.Spawner.cmd = ['jupyter-labhub']
auth:
  type: tmp
""" > ./jupyterhub.yaml
```

```bash
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  image:
    name: datalayer/jupyerhub-k8s
    tag: 0.0.3
  extraConfig:
    jupyterlab: |
      c.Spawner.cmd = ['jupyter-labhub']
auth:
  type: hmac
  hmac:
    secretKey: $(openssl rand -hex 32)
""" > ./jupyterhub.yaml
```

```python
# pip install jupyterhub-hmacauthenticator
import hashlib, hmac
username='eric'
secret_key_hex='8207381c49ef0381ed8eeccdc8d980d4ed4e53f39637688dcbf66bc31238a86a'
secret_key = bytearray.fromhex(secret_key_hex)
password = hmac.new(secret_key, username.encode('utf-8'), hashlib.sha512).hexdigest()
password
# 3c6a9c701468db1af65fb14eee09b13ecb2a54f8d32bd93c3e82e9e723271d03a2b9c7600c822a49f59d7d9e19406e1a0f26f2a606efa4a4f93fe38118c09898
```

```bash
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  extraConfig:
    jupyterlab: |
      c.Spawner.cmd = ['jupyter-labhub']
auth:
  type: custom
  custom:
    className: jupyterhub.auth.PAMAuthenticator
#    config:
#      create_system_users: true
""" > ./jupyterhub.yaml
```

```bash
# export DOCKER_REPO=datalayer
export DOCKER_REPO=localhost:5000
echo """
hub:
  image:
    name: $DOCKER_REPO/jupyterhub
    tag: ${DATALAYER_VERSION}
  imagePullPolicy: Always
  extraEnv:
    JUPYTER_ENABLE_LAB: 1
  extraConfig: |
    c.KubeSpawner.cmd = [\"jupyter-labhub\"]
auth:
  admin:
    users:
      - admineric
      - adminuser2
proxy:
  secretToken: \"$(openssl rand -hex 32)\"
  chp:
    image:
      name: ${DOCKER_REPO}/jupyterhub-http-proxy
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
prePuller:
  hook:
    image:
      name: ${DOCKER_REPO}/jupyterhub-image-awaiter
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
singleuser:
  networkTools:
    image:
      name: ${DOCKER_REPO}/jupyterhub-network-tools
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
  defaultUrl: \"/lab\"
  image:
    name: ${DOCKER_REPO}/jupyterlab
    tag: ${DATALAYER_VERSION}
  imagePullPolicy: Always
  cpu:
    limit: .5
    guarantee: .5
  memory:
    limit: 200M
    guarantee: 200M
  lifecycleHooks:
    postStart:
      exec:
        command: [\"gitpuller\", \"https://github.com/data-8/materials-fa17\", \"master\", \"materials-fa\"]
  storage:
    capacity: 10Mi
cull:
  podCuller:
    image:
      name: ${DOCKER_REPO}/jupyterhub-pod-culler
      tag: ${DATALAYER_VERSION}
    imagePullPolicy: Always
""" > ./jupyterhub.yaml
```

```bash
echo """
proxy:
  secretToken: \"$(openssl rand -hex 32)\"
singleuser:
  defaultUrl: \"/lab\"
  image:
    name: jupyter/scipy-notebook
    tag: 1085ca054a5f
#    name: datalayer/jupyterlab-datalayer
#    tag: 0.0.3
    pullPolicy: Always
  cpu:
    limit: .5
    guarantee: .5
  memory:
    limit: 1G
    guarantee: 1G
  storage:
    capacity: 1Gi
#     type: none
#     dynamic:
#       storageClass: <storageclass-name>
hub:
  extraEnv:
    JUPYTER_ENABLE_LAB: 1
#  extraConfig: |
#    c.KubeSpawner.cmd = [\"jupyter-labhub\"]
  imagePullPolicy: Always
cull:
  enabled: \"true\"
  users: \"true\"
auth:
  admin:
    users:
      - admineric
      - adminuser2
# rbac:
#    enabled: false
# lifecycleHooks:
#   postStart:
#     exec:
#       command: [\"gitpuller\", \"https://github.com/datalayer-externals/data8-course-2017\", \"master\", \"materials-fa\"]
# ingress:
#   enabled: true
#   hosts:
#     - <hostname>
#   annotations:
#     kubernetes.io/tls-acme: "true"
#   tls:
#    - hosts:
#       - <hostname>
#      secretName: kubelego-tls-jupyterhub
""" > ./jupyterhub.yaml
```

```bash
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
  service:
    type: NodePort
    nodePorts:
      http: 31212
  chp:
    resources:
      requests:
        memory: 0
        cpu: 0
hub:
  cookieSecret: $(openssl rand -hex 32)
  db:
    type: sqlite-memory
  resources:
    requests:
      memory: 0
      cpu: 0
  services:
    test:
      admin: true
      apiToken: $(openssl rand -hex 32)
singleuser:
  storage:
    type: none
  memory:
    guarantee: null
prePuller:
  hook:
    enabled: false
scheduling:
  userScheduler:
    enabled: true
debug:
  enabled: true
""" > ./jupyterhub.yaml
```

```bash
echo """
proxy:
  secretToken: $(openssl rand -hex 32)
  https:
    enabled: true
    type: offload
    hosts:
      - HOSTNAME
  service:
    labels:
      dns: 'route53'
    targetPorts:
      http: tcp
#      https: ssl
    annotations:
      nginx.ingress.kubernetes.io/ssl-redirect: 'true'
      nginx.ingress.kubernetes.io/force-ssl-redirect: 'true'
      nginx.ingress.kubernetes.io/proxy-read-timeout: '3600'
      nginx.ingress.kubernetes.io/proxy-send-timeout: '3600'
#      service.beta.kubernetes.io/aws-load-balancer-ssl-cert: arn:aws:acm:ap-northeast-2:AWS_ACCOUNT_ID:certificate/CERTIFICATE_ID
      service.beta.kubernetes.io/aws-load-balancer-backend-protocol: 'tcp'
#      service.beta.kubernetes.io/aws-load-balancer-ssl-ports: '443'
      service.beta.kubernetes.io/aws-load-balancer-connection-idle-timeout: '3600'
      domainName: 'HOSTNAME'
hub:
  extraConfig:
    jupyterlab: |
      c.Spawner.cmd = ['jupyter-labhub']
singleuser:
  image:
    name: jupyter/scipy-notebook
    tag: 82d1d0bf0867
  serviceAccountName: default
  cloudMetadata:
    enabled: true
  extraAnnotations:
    iam.amazonaws.com/role: kubeadm_role
  profileList:
    - display_name: 'Big Data environment.'
      description: 'If you want the additional bells and whistles'.
      image: datalayer/sparklab:0.0.1
      kubespawner_override:
#        service_account: 'default'
        cpu_limit: 3
        cpu_guarantee: 1
        mem_limit: '2G'
        mem_guarantee: '512M'
        extra_resource_limits: {}
    - display_name: 'Minimal environment.'
      description: 'To avoid too much bells and whistles: Python.'
      default: true
      kubespawner_override:
        image: jupyter/scipy-notebook:82d1d0bf0867
        lifecycle_hooks:
          postStart:
            exec:
              command:
                - "sh"
                - "-c"
                - >
                  gitpuller https://github.com/data-8/materials-fa17
auth:
  type: dummy
  dummy:
    password: 'p123'
  whitelist:
    users:Other Configurations.


      - u123
ingress:
  enabled: 'true'
  annotations:
    kubernetes.io/ingress.class: nginx
  hosts:
  - HOSTNAME
""" > ./jupyterhub.yaml
```

## Minikube

```bash
kubectl config get-contexts
kubectl config current-context
kubectl config use-context minikube
```

```bash
# Install.
cat <<EOF > config.yaml
hub:
  cookieSecret: $(openssl rand -hex 32)
proxy:
  secretToken: $(openssl rand -hex 32)
hub:
  config:
    JupyterHub:
      authenticator_class: github
    Authenticator:
      admin_users:
        - eric
    GitHubOAuthenticator:
      client_id: ${GITHUB_CLIENT_ID_DEV}
      client_secret: ${GITHUB_CLIENT_SECRET_DEV}
      oauth_callback_url: ${GITHUB_OAUTH_CALLBACK_URL_DEV}
  allowNamedServers: true
  extraConfig:
    jupyterlab: |
      c.Spawner.default_url = '/lab'
cull:
  enabled: false
singleuser:
  image:
    name: jupyter/scipy-notebook
    tag: 67b8fb91f950
ingress:
  enabled: true
  hosts:
    - jupyterhub.minikube.local
EOF
```

```bash
helm upgrade --cleanup-on-fail \
  --install jupyterhub jupyterhub/jupyterhub \
  --namespace datalayer-jupyterhub \
  --create-namespace \
  --timeout 5m \
  --version=0.11.1 \
  --values config.yaml
```

```bash
# open $(minikube -n $NAMESPACE service proxy-public --url)
# open http://minikube.local/api/jupyterhub/hub/user-redirect
# open http://minikube.local
# minikube -n $NAMESPACE service proxy-public --url
# Access.
minikube service proxy-public --namespace datalayer-jupyterhub
open http://jupyterhub.minikube.local
```

```bash
# Teardown.
helm delete jupyterhub -n datalayer-jupyterhub
kubectl delete namespace datalayer-jupyterhub
```

## phpMyAdmin

Once connected on the notebook, you have a Browser URL which contains your username.

```
http://192.168.64.17:30374/user/eric/lab
```

To access phpMyAdmin, append `proxy/absolute/8097/phpmyadmin` after the username as your Browser URL, e.g.

```bash
http://192.168.64.17:30374/hub/user-redirect/proxy/absolute/8097/phpmyadmin/index.php
# or...
http://192.168.64.17:30374/user/eric/proxy/absolute/8097/phpmyadmin/index.php
```
