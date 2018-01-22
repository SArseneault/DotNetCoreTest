#!/user/bin/env bash

kubectl create -f ingress-service.yaml
kubectl create -f app-Deployment.yaml

