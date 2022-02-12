kubectl get nodes
kubectl get pods
#Check control plane pods
kubectl get pods -n kube-system
#Check controlplane services
service kube-apiservice status
service kube-controller-manager status
service kube-scheduler status
#Check worker services
service kubelet status
service kube-proxy status
#Check service logs
kubectl logs kube-apiserver-master -n kube-system
sudo journalctl -u kube-apiserver
kubectl logs < pod name like kube-controller-manager-controlplane>
#Worker node failures
#Check node status 
kubectl get nodes
kubectl describe node <node-name>
top
df -h
#Check kubelet status
service kubelet status
sudo journalctl -u kubelet
openssl x509 -in /var/lib/kubelet/worker-1.crt -text

kubectl -n kube-system describe/edit ds kube-proxy