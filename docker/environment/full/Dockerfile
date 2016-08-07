FROM debian:jessie
MAINTAINER Vladislav Sidlyarevich vlsidlyarevich@gmail.com

RUN apt-get update && \
    apt-get install -y wget tar

RUN wget --no-check-certificate --no-cookies --header \
    "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz

#Installing java 8 jre
RUN tar -xf jdk-8u92-linux-x64.tar.gz -C /opt/jdk && rm jdk-8u92-linux-x64.tar.gz

RUN wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/
    apache-maven-3.3.9-bin.tar.gz

#Installing apache maven
RUN tar -xf apache-maven-3.3.9-bin.tar.gz -C /opt/

RUN wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz

#Installing Apache tomcat 8
RUN tar -xf apache-tomcat-8.0.36.tar.gz -C ~/opt/

RUN update-alternatives --remove-all javac && \
    update-alternatives --remove-all java && \
    update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_92/bin/javac 1 && \
    update-alternatives --install /usr/bin/java java /otp/jdk/jdk1.8.0_92/bin/java 1 && \
    update-alternatives --config javac && \
    update-alternatives --config java &&

#Updating variables.sh
ENV JAVA_HOME=/opt/jdk/jdk1.8.0_92
ENV 'PATH=$JAVA_HOME/bin:$PATH'
ENV M2_HOME=/opt/apache-maven-3.3.9
ENV 'M2=$M2_HOME/bin'
ENV 'PATH=$PATH:$M2'
ENV CATALINA_HOME= ~/opt/tomcat-8.0.36
ENV 'PATH=$CATALINA_HOME/bin:$PATH'
