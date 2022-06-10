# KEDA.SH demo

KEDA is a Kubernetes-based Event Driven Autoscaler. With KEDA, you can drive the scaling of any container in Kubernetes based on the number of events needing to be processed.

KEDA is a single-purpose and lightweight component that can be added into any Kubernetes cluster. KEDA works alongside standard Kubernetes components like the Horizontal Pod 
Autoscaler and can extend functionality without overwriting or duplication. With KEDA you can explicitly map the apps you want to use event-driven scale, with other apps 
continuing to function. This makes KEDA a flexible and safe option to run alongside any number of any other Kubernetes applications or frameworks.


More info: https://keda.sh/

This repo contains some scripts to automate a basic installation and uninstall of the KEDA.sh software under Kubernetes for demo testing.

It has been tested on Kubernetes and cri-o 1.20 running under Fedora Server 34.

* install.sh: script to install KEDA.SH
* uninstall.sh: script to uninstall KEDA.SH
* cleanList.sh: script to clean a redis list
* insertIntoList.sh: script to insert an item into a redis list
* keda-2.5.0.yaml: keda.sh v2.5.0 to be used by the install.sh
* metrics-server.yaml: metrics server yaml needed by KEDA.SH
* metrics.sh: example script to get the k8s metrics
* queryLenQueue.sh: script to query the lenght of a queue
* redis: folder with the redis yaml to install redis app
* redis-scaledjob.yaml: the redis yaml with the scaledjob example
* redis-scaledobject.yaml: the redis yaml with the scaledobject example
