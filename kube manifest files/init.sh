#!/user/bin/env bash

echo 'Creating application deployment'
kubectl create -f app-Deployment.yaml

echo 'Creating service to expose applications port'
kubectl create -f ingress-service.yaml

