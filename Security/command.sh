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