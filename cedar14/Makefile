CEDAR14_URL ?= https://raw.githubusercontent.com/heroku/stack-images/master/bin/cedar-14.sh
CEDAR14_BASE ?= ubuntu-debootstrap:14.04

build: build/cedar14.tar

build/cedar14.tar:
	mkdir -p build
	docker run --name cedar14-build \
		-v $(shell pwd)/cedar-14.sh:/mnt/build.sh \
		-v $(shell pwd)/patches:/mnt/patches \
		-e LC_ALL=C \
		-e DEBIAN_FRONTEND=noninteractive \
		$(CEDAR14_BASE) \
		bash -c "set -x; /mnt/build.sh && for patch in /mnt/patches/*.sh; do \$$patch; done"
	docker commit cedar14-build cedar14-build
	docker export cedar14-build > build/cedar14.tar

test: build/cedar14.tar
	docker run --name cedar14-test-git    cedar14-build bash -c '[[ "$$(git --version)"  =~ "git version 1.9" ]]'
	docker run --name cedar14-test-python cedar14-build bash -c '[[ "$$(python -V 2>&1)" =~ "Python 2.7" ]]'
	docker run --name cedar14-test-ruby   cedar14-build bash -c '[[ "$$(ruby --version)" =~ "ruby 1.9" ]]'
	docker run --name cedar14-test-gem    cedar14-build bash -c '[[ "$$(gem -v)"         =~ "1.8" ]]'

update:
	curl --fail -s $(CEDAR14_URL) > cedar-14.sh
	git diff cedar-14.sh

clean:
	docker rm -f \
		cedar14-build \
		cedar14-test-git \
		cedar14-test-python \
		cedar14-test-ruby \
		cedar14-test-gem \
		2> /dev/null || true
	docker rmi cedar14-build 2> /dev/null || true
	rm -rf build

.PHONY: build update clean
