FROM debian:jessie
MAINTAINER Vladislav Sidlyarevich vlsidlyarevich@gmail.com

RUN apt-get update && \
    apt-get install -y wget tar

RUN wget --no-check-certificate --no-cookies --header \
    "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz

#Installing java 7 jre
RUN mkdir -p /opt/jdk && tar -xf jdk-7u79-linux-x64.tar.gz \
    -C /opt/jdk && rm jdk-7u79-linux-x64.tar.gz

RUN update-alternatives --remove-all javac && \
    update-alternatives --remove-all java && \
    update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_79/bin/javac 1 && \
    update-alternatives --install /usr/bin/java java /otp/jdk/jdk1.7.0_79/bin/java 1 && \
    update-alternatives --config javac && \
    update-alternatives --config java &&

#Updating variables.sh
ENV JAVA_HOME=/opt/jdk/jdk1.7.0_79
ENV 'PATH=$JAVA_HOME/bin:$PATH'
