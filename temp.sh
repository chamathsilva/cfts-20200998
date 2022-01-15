export AWS_PROFILE=iit-msc

# connect to the database
kubectl run -it --rm --image=mysql:5.7.22 --restart=Never mysql-client -- mysql -h usermgmtdb.ckfzgtrt9mue.eu-west-2.rds.amazonaws.com -u dbadmin -pdbpassword11

# deploy mysql external name service
kubectl apply -f mysql-k8s.yml
# list services
kubectl get services -n dev-coinbase-namespace

# list pods
kubectl get pods -n dev-coinbase-namespace


kubectl -n dev-coinbase-namespace logs dev-coinbase-pod-deployment-54479dfdd5-2mt7m 


eksctl delete cluster --name coinbase-cluster --region us-east-1

eksctl create iamidentitymapping --cluster coinbase-cluster --arn arn:aws:iam::036710734874:user/admin-chamath --group  eks-console-dashboard-full-access-group --username admin-chamath



      RoleArn:
        !GetAtt CRMSCodePipelineRole.Arn