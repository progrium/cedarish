CEDAR14_URL ?= https://raw.githubusercontent.com/heroku/stack-images/master/bin/cedar-14.sh
CEDAR14_BASE ?= ubuntu-debootstrap:14.04

build:
	mkdir -p build
	docker run --name cedar14-build \
		-v $(shell pwd)/cedar-14.sh:/mnt/build.sh \
		-e LC_ALL=C \
		-e DEBIAN_FRONTEND=noninteractive \
		$(CEDAR14_BASE) \
		/mnt/build.sh
	docker export cedar14-build > build/cedar14.tar
	docker rm -f cedar14-build

update:
	curl --fail -s $(CEDAR14_URL) > cedar-14.sh
	git diff cedar-14.sh

.PHONY: build update