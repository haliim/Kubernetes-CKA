ip link
ip addr
ip addr add 192.168.1.10/24 dev eth0
ip route
ip route add 192.168..1.0/24 via 192.168.2.1
cat /proc/sys/net/ipv4/ip_forward
arp node01
netstat -plnt
route
ipcalc | grep eth0
#https://kubernetes.io/docs/concepts/cluster-administration/addons/
#https://kubernetes.io/docs/concepts/cluster-administration/networking/#how-to-implement-the-kubernetes-networking-model
#https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/high-availability/#steps-for-the-first-control-plane-node

#Deploy weave
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

ps -aux | grep kubelet | grep --color network-plugin=
cat /opt/cni/bin
cd /etc/cni/net.d/
kubectl get pods -n kube-system