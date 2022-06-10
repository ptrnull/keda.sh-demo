wget https://github.com/kedacore/keda/releases/download/v2.5.0/keda-2.5.0.yaml
kubectl apply -f keda-2.5.0.yaml > .keda.installed
kubectl config set-context --current --namespace=keda
