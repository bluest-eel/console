VERSION = $(shell cat VERSION)

default: container

container:
	@VERSION=$(VERSION) docker-compose -f ./docker/dev/builder.yml run --rm install

up:
	@VERSION=$(VERSION) docker-compose -f ./docker/dev/compose.yml up

rebuild-up: container up

down:
	@VERSION=$(VERSION) docker-compose -f ./docker/dev/compose.yml down

container-run: container run

bash:
	@docker exec -it console bash

bash-run: bash run

