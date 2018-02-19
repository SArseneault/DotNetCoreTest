#!/user/bin/env bash

kubectl create -f app-Deployment.yaml
kubectl create -f ingress-service.yaml

