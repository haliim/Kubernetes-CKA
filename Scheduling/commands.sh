#Selectors
kubectl get pods --selector env=dev --no-headers | wc -l
kubectl get all --selector env=dev --no-headers | wc -l
kubectl get pod --selector env=prod,bu=finance,tier=frontend

#Taints & Tolerations
#Taints are set on nodes & Tolerations are set on pods
kubectl taint nodes node-name key=value:taint-effect # Taint-effect is what happens to PODs that do not tolerate this taint --> NoSchedule | PreferNoSchedule | NoExecute
kubectl taint nodes node1 app= blue:NoSchedule
kubectl taint nodes node01 spray=mortein:NoSchedule
kubectl describe node kubemaster #Always use this command to know a specific info about a pod
kubectl get pod <pod name> -o yaml > file.yaml # to extract current config, modify it and delete the pod, then create a new one with the modified yaml file
#Node Selector
kubectl label nodes node-name key=value
#Node Affinity
#Daemon sets    # Used mainly to add pods in all nodes (monitoring agent mfor example)
#Static pods
kubectl run --restart=Never --image=busybox static-busybox --dry-run=client -o yaml --command -- sleep 1000 > /etc/kubernetes/manifests/static-busybox.yaml
#The above command Create a static pod named static-busybox that uses the busybox image and the command sleep 1000
kubectl get events