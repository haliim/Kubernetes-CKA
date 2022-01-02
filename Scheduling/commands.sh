#Selectors
kubectl get pods --selector env=dev --no-headers | wc -l
kubectl get all --selector env=dev --no-headers | wc -l
kubectl get pod --selector env=prod,bu=finance,tier=frontend

#Taints & Tolerations
#Taints are set on nodes & Tolerations are set on pods
kubectl taint nodes node-name key=value:taint-effect # Taint-effect is what happens to PODs that do not tolerate this taint --> NoSchedule | PreferNoSchedule | NoExecute
kubectl taint nodes node1 app= blue:NoSchedule
kubectl taint nodes node01 spray=mortein:NoSchedule
kubectl describe node kubemaster | grep taint
#Node Selector
kubectl label nodes node-name key=value
#Node Affinity
