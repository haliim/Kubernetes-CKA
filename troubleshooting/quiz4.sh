Do the services in triton namespace have a valid endpoint? If they do, check the kube-proxy and the weave logs.
Does the cluster have a Network Addon installed?

Install Weave using the link: https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/#pod-network

For example: 
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"