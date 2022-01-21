ip link
ip addr
ip addr add 192.168.1.10/24 dev eth0
ip route
ip route add 192.168..1.0/24 via 192.168.2.1
cat /proc/sys/net/ipv4/ip_forward
arp node01
netstat -plnt
route
#https://kubernetes.io/docs/concepts/cluster-administration/addons/
#https://kubernetes.io/docs/concepts/cluster-administration/networking/#how-to-implement-the-kubernetes-networking-model
#https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/high-availability/#steps-for-the-first-control-plane-node