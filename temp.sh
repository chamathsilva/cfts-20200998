export AWS_PROFILE=velaris-non-prod

# connect to the database
kubectl run -it --rm --image=mysql:5.7.22 --restart=Never mysql-client -- mysql -h usermgmtdb.ckfzgtrt9mue.eu-west-2.rds.amazonaws.com -u dbadmin -pdbpassword11

# deploy mysql external name service
kubectl apply -f mysql-k8s.yml
# list services
kubectl get services -n dev-coinbase-namespace