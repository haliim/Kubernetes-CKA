#Steps to generate Certificates using OpenSSL
#Generate a CA certificate (the global certificate that will be used to sign other certificates)
openssl genrsa -out ca.key 2048 #this will generate ca.key file which is a private key
openssl req -new -key ca.key -subj "/CN=KUBERNETES-CA" -out ca.csr #Certificate signing request file, thi file contines all certificate details but without the CA signature
openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt #sign the certificate and generate ca.crt file which is a public key
#=======
#Admin user certificate
openssl genrsa -out sa.key 2048
openssl req -new -key admin.key -subj "/CN=KUBERNETES-ADMIN/O=system:masters" -out admin.csr --config openssl.cnf   #config option in case you want to identify DNS/IP aliases   #The O=system:masters part is to identify a group or make the certificate belongs to a group with this name, so later you can assign certain priviliges to this group
openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt #Signing the admin.csr with CA key pair (both) to make admin.crt a valid certificate
#For kubernetes modules
#SYSTEM:KUBE-SCHEDULER - system:node:node01

#Encoding a certificate to read the details
openssl x509 -in /etc/kubecrnetes/pki/apiserver.crt -text -noout
journalctl -u etcd.service -l
kubectl logs etcd-master
docker ps -a
docker logs <container ID>
#==========
kubectl get certificatesigningrequests.certificates.k8s.io <certificate name>
kubectl certificate approve <certificate name>
kubectl config view
kubectl config --kubeconfig=/root/my-kube-config use-context <user group>@<cluster name>    #Specify kubeconfig location if it's not the default location
kubectl config current-context --kubeconfig <config file name and directory>
#==================
#APIs
kubectl proxy
#===================
#RBAC
kubectl get roles
kubectl get rolebindings #--no-headers | wc -l
kubectl describe role <role name>
kubectl auth can-i <create deployments> --as <dev user>
#Example:
kubectl create role developer --resource=pods --verb=list,create,delete
kubectl create rolebinding dev-user-binding --role=developer --user=dev-user

#=================
#Service accounts
kubectl create serivceaccount <name>
kubectl get serivceaccount
kubectl describe serivceaccount <name>
kubectl exec -it <pod name> ls /var/run/secrets/kubernetes.io/serivceaccount

#===============
#Image security
docker login <private-registry.io>  #will request username and password
docker run <private-registry.io/apps/internal-app>
kubectl create secret <docker registry> <secret-name> \
    --docker-server=
    --docker-username=
    --docker-password=
    --docker-email=

