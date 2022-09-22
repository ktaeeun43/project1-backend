#!/bin/sh

kubectl delete -f web-test-svc.yaml -n taeeun-cat-test
kubectl apply -f web-test-svc.yaml -n taeeun-cat-test