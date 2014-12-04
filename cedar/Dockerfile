FROM ubuntu:quantal
MAINTAINER Jeff Lindsay <progrium@gmail.com>

ADD . /tmp/build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive cd /tmp/build && ./cedar.sh
RUN rm -rf /tmp/build
