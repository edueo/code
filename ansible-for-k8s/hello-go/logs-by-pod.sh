for pod in $(kubectl get po -l app=hello-go -oname); do echo $pod; kube\
ctl logs $pod; done;
