DOCKER=$(shell which docker)

.PHONY: build

build:
	docker build -t php5.6 -f Dockerfile .
