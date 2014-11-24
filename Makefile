NAME=cedarish
VERSION=1

release:
	rm -rf release
	mkdir -p release
	cp cedar14/build/cedar14.tar release/$(NAME)-cedar14_$(VERSION).tar
	cd release && gzip -9 -k $(NAME)-cedar14_$(VERSION).tar
	echo "$(VERSION)" > release/version
	echo "progrium/$(NAME)" > release/repo
	gh-release $(NAME)-cedar14* # https://github.com/progrium/gh-release

clean:
	rm -rf release
	rm -rf cedar14/build

.PHONY: release clean