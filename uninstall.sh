for res in $(cat .keda.installed | cut -d' ' -f1); do
	kubectl delete $res
done
