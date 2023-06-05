kubectl delete service hello-go
kubectl delete deployment hello-go
eval $(minikube docker-env)
docker rmi hello-go
