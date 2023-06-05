.PHONY: docker-build
docker-build:
	docker build -t hello-go .

.PHONY: docker-run
docker-run:
	docker run --name hello-go --rm -p 8180:8180 hello-go
