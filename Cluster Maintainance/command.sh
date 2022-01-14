kubectl drain <node name>   #move all pods to other containers and make the node unscheduler and unavailable
kubectl cordon <node name>  #Makes the node unschdeuler
kubectl uncordon <node name>    #Make the node scheduler

#Upgrade your cluster steps using kubeadm tool
#Step 1 --> Master upgrade
kubeadm upgrade plan
apt-get upgrade -y kubeadm=1.12.0-00
kubeadm upgrade apply v1.12.0
kubectl drain <controlplane>
apt-get upgrade -y kubelet=1.12.0-00
systemctl restart kubelet
kubectl uncordon <controlplane>
#===Step 2 --> Worker upgrade (if you have 3 worker nodes the below steps will be executed 3 times for every node)
kubectl drain <node 1>  #This command is executed on the control plane and the rest below are executed inside node terminal
apt-get upgrade -y kubeadm=1.12.0-00
apt-get upgrade -y kubelet=1.12.0-00
kubeadm upgrade node config --kubelet-version v1.12.0
systemctl restart kubelet
kubectl uncordon <node 1>
#Backup
kubectl get all --all-namespaces -o yaml > all-deploy-services.yaml #https://velero.io/ is a managed backup solution
#Backup ETCD