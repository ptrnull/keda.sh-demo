#!/bin/bash
kubectl get --raw "/apis/external.metrics.k8s.io/v1beta1" | jq .
#kubectl get --raw "/apis/external.metrics.k8s.io/v1beta1/namespaces/YOUR_NAMESPACE/YOUR_METRIC_NAME"
#kubectl get scaledobject SCALEDOBJECT_NAME -n NAMESPACE -o jsonpath={.status.externalMetricNames}
