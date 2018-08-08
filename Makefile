default: build

build:
	docker-compose -f ./.docker-compose/run.yml build

build-dev:
	docker-compose -f ./.docker-compose/dev.yml build

down:
	docker-compose down

watch:
	docker-compose -f ./.docker-compose/watch.yml up

dev: 
	docker-compose -f ./.docker-compose/dev.yml up

run: 
	docker-compose -f ./.docker-compose/run.yml up