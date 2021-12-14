
#Source https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
cd
#Download Binaries
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version

#https://v1-18.docs.kubernetes.io/docs/tasks/tools/install-minikube/
sudo apt-get update && sudo apt-get install docker.io -y
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
minikube version
sudo groupadd docker
sudo gpasswd -a $USER docker
minikube start --driver=docker
minikube status

