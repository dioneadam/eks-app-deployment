#!/bin/bash

set -x

kubectl apply -f simple-app/kubernetes/deployment.yml
kubectl apply -f simple-app/kubernetes/service.yml
