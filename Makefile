DOCKER=$(shell which docker)
MOUNT_DIR=$(shell pwd)/volume

.PHONY: build

build:
	$(DOCKER) build -t php5.6 -f Dockerfile .

shell:
	$(DOCKER) run -v $(MOUNT_DIR):/var/www  -it php5.6 /bin/bash
