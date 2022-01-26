brew install minikube
minikube start --memory 8192 --cpus 2
minikube dashboard
kubectl apply -f persistent-volumes.yml
terraform init
terraform apply
