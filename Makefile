VERSION = $(shell cat VERSION)

default: container

up:
	@VERSION=$(VERSION) docker-compose -f ./docker/dev/compose.yml up

down:
	@VERSION=$(VERSION) docker-compose -f ./docker/dev/compose.yml down

container-run: container run

bash:
	@docker run -it bluest-eel/$(VERSION) bash

bash-run: bash run

