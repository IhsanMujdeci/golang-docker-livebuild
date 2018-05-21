NAME = go-docker-boilerplate

default: build

build:
	docker build -t ${NAME} .

run:
	docker run 
	--publish 6060:3001 
	--name test --rm 
	${NAME}