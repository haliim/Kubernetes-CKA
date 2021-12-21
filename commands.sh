kubectl get pods / replicationcontroller / replicaset
kubectl delete pod / replicationcontroller anelapod
kubectl replace 
kubectl describe
kubectl edit
kubectl scale replicaset name --replicas=2

#===================
Deployments Commands

kubectl create -f file.yaml
kubectl get deployments
kubectl apply -f file.yaml # upraing eployment by changing the yaml file config
kubectl set image deployment/myapp-deployment nginx=nginx:1.7.1
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl rollout undo deployment/myapp-deployment
