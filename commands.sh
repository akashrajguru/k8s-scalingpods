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

###command to destroy pod by pod name
# copy last pod name into environment variable
POD_NAME=$(kubectl get pods -o name | tail -1)
# delete pod
kubectl delete $POD_NAME

# Removinf pod lables used by ReplicaSet selector 
POD_NAME=$(kubectl get pods -o name | tail -1)

# - at the end of the name of the labels section indicates that a label should be removed
kubectl label $POD_NAME service- 

kubectl describe $POD_NAME

kubectl get pods --show-labels

# Add the label which was removed
kubectl label $POD_NAME service=replicaset-demo

kubectl get pods --show-labels

kubectl delete -f replicaset-demo-scaled.yml