FROM ubuntu:14.04
MAINTAINER Vladislav Sidlyarevich vlsidlyarevich@gmail.com

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update
RUN apt-get install -y curl

RUN curl -sL https://repos.influxdata.com/influxdb.key | apt-key add -
RUN source /etc/lsb-release
RUN echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | tee /etc/apt/sources.list.d/influxdb.list

RUN apt-get update && apt-get install -y influxdb
RUN service influxdb start
