IMAGE_NAME := youske/jessie-apachephp

build: Dockerfile
	docker build --file Dockerfile -t ${IMAGE_NAME} .

build_nocache: Dockerfile
	docker build --no-cache --file Dockerfile -t ${IMAGE_NAME} .


run: build
	docker run -it -p ${SHARE_PORT}:${SHARE_PORT}
