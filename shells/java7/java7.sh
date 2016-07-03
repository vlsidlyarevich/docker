#!bin/bash

echo "Java 7 installing script"

#Downloading java 7 jre

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz

sudo mkdir -p /usr/lib64/jvm

tar -xf jdk-7u79-linux-x64.tar.gz -C /usr/lib64/jvm

rm jdk-7u79-linux-x64.tar.gz