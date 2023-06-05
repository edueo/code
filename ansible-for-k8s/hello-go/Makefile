.PHONY: docker-build
docker-build:
	docker build -t hello-go .

.PHONY: docker-run
docker-run:
	docker run --name hello-go --rm -p 8180:8180 hello-go

.PHONY: cluster-start
cluster-start:
	minikube start --cpus 4 --memory 4g

.PHONY: build-images-minikube
build-images-minikube:
	eval $(minikube docker-env)

.PHONY: run-hello-go-minikube
run-hello-go-minikube:
	kubectl create deployment hello-go --image=hello-go

.PHONY: expose-hello-go
expose-hello-go:
	kubectl expose deployment hello-go --type=LoadBalancer --port=8180

.PHONY: minikube-svc
minikube-svc:
	minikube service hello-go
