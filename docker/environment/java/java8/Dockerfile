FROM debian:jessie
MAINTAINER Vladislav Sidlyarevich vlsidlyarevich@gmail.com

RUN apt-get update && \
    apt-get install -y wget tar

RUN wget --no-check-certificate --no-cookies --header \
    "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz

#Installing java 8 jre
RUN mkdir -p /opt/jdk && tar -xf jdk-8u92-linux-x64.tar.gz \
    -C /opt/jdk && rm jdk-8u92-linux-x64.tar.gz

RUN update-alternatives --install /usr/bin/javaws javaws /opt/jdk/jdk1.8.0_92/bin/javaws 1 && \
    update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_92/bin/javac 1 && \
    update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_92/bin/java 1 && \
    update-alternatives --set javac /opt/jdk/jdk1.8.0_92/bin/javac && \
    update-alternatives --set java /opt/jdk/jdk1.8.0_92/bin/java && \
    update-alternatives --set javaws /opt/jdk/jdk1.8.0_92/bin/javaws

#Updating variables.sh
ENV JAVA_HOME=/opt/jdk/jdk1.8.0_92
ENV 'PATH=$JAVA_HOME/bin:$PATH'
