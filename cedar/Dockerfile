FROM ubuntu:quantal
MAINTAINER progrium <progrium@gmail.com>

ADD . /tmp/build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive cd /tmp/build && ./cedar.sh
RUN rm -rf /tmp/build