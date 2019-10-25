VERSION = $(shell cat VERSION)

container:
	docker build -t bluest-eel/$(VERSION) .

run:
	docker run -t bluest-eel/$(VERSION)

bash:
	docker run -t bluest-eel/$(VERSION) bash

