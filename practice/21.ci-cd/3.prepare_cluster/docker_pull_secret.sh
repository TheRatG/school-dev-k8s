#!/bin/bash

NS=xpaste-development

kubectl delete secret xpaste-gitlab-registry --namespace "$NS"

kubectl create secret docker-registry xpaste-gitlab-registry \
  --docker-server registry.gitlab.com \
  --docker-email 'theratw@gmail.com' \
  --docker-username 'gitlab+deploy-token-4065227' \
  --docker-password 'gldt-zcNMx6CroaQkCBYgGwwP' \
  --namespace "$NS"
