FROM ubuntu-debootstrap:14.04.2
MAINTAINER zubairov "info@elastic.io"

ADD ./stack/cedar-14.sh /tmp/build.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /tmp/build.sh
