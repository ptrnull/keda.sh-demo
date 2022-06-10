#!/bin/bash
pod=$(kubectl get pod -o name | grep redis)
list=$1
kubectl exec -it ${pod} -- redis-cli lpush ${list} "hello"
