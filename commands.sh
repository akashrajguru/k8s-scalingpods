kubectl apply -f replicaset-demo.yml

kubectl delete -f replicaset-demo.yml

kubectl get rs

kubectl get -f replicaset-demo.yml

kubectl describe -f replicaset-demo.yml 

kubectl get pods --show-labels

######## Operation on ReplicaSets
# 1. We can remove ReplicaSets leaving pods created by replicaset intact
kubectl delete -f replicaset-demo.yml --cascade=false

kubectl get rs

kubectl get pods

kubectl create -f replicaset-demo.yml --save-config

kubectl apply -f replicaset-demo-scaled.yml

kubectl get pods