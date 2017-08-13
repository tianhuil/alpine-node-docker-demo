CONTAINER_NAME=MAILIN_DEMO
PORT=49160

build:
	docker build -t node-web-app .

run:
	docker run --name=${CONTAINER_NAME} -p ${PORT}:8080 -d node-web-app

curl:
	curl -i localhost:${PORT}

log:
	docker logs ${CONTAINER_NAME}

stop:
	docker stop ${CONTAINER_NAME}
