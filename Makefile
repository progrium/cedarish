NAME=cedarish
VERSION=3

release: cedar14/build/cedar14.tar
	rm -rf release && mkdir -p release
	gzip -9 cedar14/build/cedar14.tar > release/$(NAME)-cedar14_v$(VERSION).tar.gz
	gh-release create progrium/$(NAME) $(VERSION) $(shell git rev-parse --abbrev-ref HEAD) v$(VERSION)

cedar14/build/cedar14.tar:
	make -C cedar14 build

deps:
	go get github.com/progrium/gh-release

clean:
	rm -rf release

.PHONY: release
