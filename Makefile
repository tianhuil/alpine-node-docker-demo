CONTAINER_NAME=MAILIN_DEMO

build:
	docker build -t node-web-app .

run:
	docker run --name=${CONTAINER_NAME} -p 49160:8080 -d node-web-app

curl:
	curl -i localhost:49160

log:
	docker logs ${CONTAINER_NAME}

stop:
	docker stop ${CONTAINER_NAME}
