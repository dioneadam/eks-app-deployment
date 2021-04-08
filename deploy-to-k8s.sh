#!/bin/bash

set -x

kubectl apply -f simple-app/kubernetes/deployment.yaml
kubectl apply -f simple-app/kubernetes/service.yaml
