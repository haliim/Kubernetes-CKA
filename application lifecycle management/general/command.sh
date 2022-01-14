kubectl rollout status  deployment/<deployment-name>
                history
                undo

# Updates are recreate and rollingupdate
docker run ubuntu
docker run -e APP_COLOR=pink <container-name> 
#Env variable can be
#   plain text
#   ConfigMaps
#   Secret Manager
kubectl create configmap \
    <config-name>   --from-literal=<key>=<value> \
                    --from-literal=<key>=<value>
kubectl create secret generic
    <secret-name>   --from-literal=<key>=<value> \
                    --from-literal=<key>=<value>