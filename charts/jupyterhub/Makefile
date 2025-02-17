# Copyright (c) 2023-2024 Datalayer, Inc.
#
# Datalayer License

JUPYTER_NAME=hub

KEYCLOAK_NAME=keycloak

DOCKER_ENV=$(minikube docker-env)

.SILENT: init

init:
	eval $(DOCKER_ENV)

deploy: init
	$(MAKE) deploy-keycloak
	echo "Waiting for Keycloak to finish deploying..."
	sleep 60
	echo "Configuring Keycloak"
	python setup_keycloak.py
	$(MAKE) deploy-jupyterhub

deploy-keycloak: init
	helm install --name $(KEYCLOAK_NAME) --namespace $(KEYCLOAK_NAME) -f keycloak.yaml keycloak

deploy-jupyterhub: init
	helm upgrade \
		--install $(JUPYTER_NAME) \
		jupyterhub/jupyterhub \
		--namespace $(JUPYTER_NAME) \
		--version 4.0.0 \
		--values jupyterhub.yaml \
		--values hub_generated_config.yaml
		--set auth.custom.client_secret= \
		--timeout 5m

rm: init
	echo $(JUPYTER_NAME)
	helm delete $(JUPYTER_NAME) --purge ; \
	kubectl delete namespace $(JUPYTER_NAME) ; \
	helm delete $(KEYCLOAK_NAME) --purge ; \
	kubectl delete namespace $(KEYCLOAK_NAME) ; :
