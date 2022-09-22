#!/bin/sh


kubectl get events --sort-by='.lastTimestamp' -n taeeun-cat-test
