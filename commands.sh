kubectl get pods / replicationcontroller / replicaset
kubectl delete pod / replicationcontroller anelapod
kubectl replace 
kubectl describe
kubectl edit
kubectl scale replicaset name --replicas=2
<<<<<<< HEAD
kubectl rollout status deployment/myappdeployment
=======

#===================
Deployments Commands

kubectl create -f file.yaml
kubectl get deployments
kubectl apply -f file.yaml # upraing eployment by changing the yaml file config
kubectl set image deployment/myapp-deployment nginx=nginx:1.7.1
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl rollout undo deployment/myapp-deployment
>>>>>>> 4867db2d85d1a4d4af6a22ad37ef571dce483e52
