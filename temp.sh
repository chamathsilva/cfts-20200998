export AWS_PROFILE=iit-msc

# connect to the database
kubectl run -it --rm --image=mysql:5.7.22 --restart=Never mysql-client -- mysql -h usermgmtdb.ckfzgtrt9mue.eu-west-2.rds.amazonaws.com -u dbadmin -pdbpassword11

# deploy mysql external name service
kubectl apply -f mysql-k8s.yml
# list services
kubectl get services -n dev-coinbase-namespace

# list pods
kubectl get pods -n dev-coinbase-namespace


kubectl -n dev-coinbase-namespace logs dev-coinbase-pod-deployment-559884cf6c-4kr8w

# kubectl delete namespaces qa-coinbase-namespace

kubectl scale deployments/green-coinbase-pod-deployment --replicas=3 -n prod-coinbase-namespace