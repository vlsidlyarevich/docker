#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

printf "*********${RED}Java 7 installation${NC}*********\n"

#Downloading java 7 jre

wget --no-check-certificate --no-cookies --header \
"Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz

sudo mkdir -p /usr/lib64/jvm

#Installing java 7 jre
tar -xf jdk-7u79-linux-x64.tar.gz -C /usr/lib64/jvm

rm jdk-7u79-linux-x64.tar.gz

update-alternatives --install /usr/bin/javaws javaws /usr/lib64/jvm/jdk1.7.0_79/bin/javaws 1 && \
update-alternatives --install /usr/bin/javac javac /usr/lib64/jvm/jdk1.7.0_79/bin/javac 1 && \
update-alternatives --install /usr/bin/java java /usr/lib64/jvm/jdk1.7.0_79/bin/java 1 && \
update-alternatives --set javac /usr/lib64/jvm/jdk1.7.0_79/bin/javac && \
update-alternatives --set java /usr/lib64/jvm/jdk1.7.0_79/bin/java && \
update-alternatives --set javaws /usr/lib64/jvm/jdk1.7.0_79/bin/javaws

#Updating variables.sh
export JAVA_HOME=/usr/lib64/jvm
export PATH=$JAVA_HOME/bin:$PATH