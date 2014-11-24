FROM ubuntu-debootstrap:14.04
MAINTAINER Jeff Lindsay <progrium@gmail.com>

ADD ./cedar-14.sh /tmp/build.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /tmp/build.sh
