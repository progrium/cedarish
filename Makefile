NAME=cedarish
VERSION=2

release: cedar14/build/cedar14.tar
	rm -rf release && mkdir -p release
	cp cedar14/build/cedar14.tar release/$(NAME)-cedar14_v$(VERSION).tar
	gzip -9 -c cedar14/build/cedar14.tar > release/$(NAME)-cedar14_v$(VERSION).tar.gz
	gh-release create progrium/$(NAME) $(VERSION) $(shell git rev-parse --abbrev-ref HEAD)

cedar14/build/cedar14.tar:
	make -C cedar14 build

deps:
	go get github.com/progrium/gh-release

clean:
	rm -rf release

.PHONY: release clean
