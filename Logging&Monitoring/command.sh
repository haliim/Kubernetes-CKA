minikube addons enable metrics-server
kubectl top node
kubectl top pod
#==========
kubectl logs -f <pod name> <container name>