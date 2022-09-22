#!/bin/sh

kubectl delete -f deploy-testbitvelo.yaml -n taeeun-cat-test
kubectl apply -f deploy-testbitvelo.yaml -n taeeun-cat-test