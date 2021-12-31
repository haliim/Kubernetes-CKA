kubectl get pods / replicationcontroller / replicaset
kubectl delete pod / replicationcontroller anelapod
kubectl replace 
kubectl describe
kubectl edit
kubectl scale replicaset name --replicas=2
kubectl rollout status deployment/myappdeployment

#===================
Deployments Commands

kubectl create -f file.yaml
kubectl get deployments
kubectl apply -f file.yaml # upraing eployment by changing the yaml file config
kubectl set image deployment/myapp-deployment nginx=nginx:1.7.1
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl rollout undo deployment/myapp-deployment

#=======================
Namespace Commands
kubectl get pods --namespace=xxx
kubectl get pods --all-namespaces
ubectl create -f file.yaml --namespace=xxx # or you can add namspace under metadata section
kubectl create namespace xxx
kubectl config set-context $(kubectl config current-context) --namespace=dev
db-service.dev.svc.cluster.local == name.namspace.type.cluster.local

#=========================
Imperative & Declarative
kubectl expose pod redis --port=6379 --name redis-service
kubectl create deployment webapp --image=kodekloud/webapp-color --replicas=3