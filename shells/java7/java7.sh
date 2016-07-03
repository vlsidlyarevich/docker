#!bin/bash

echo "Java 7 installing script"

#Downloading java 7 jre

wget --no-check-certificate --no-cookies --header \
"Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz

sudo mkdir -p /usr/lib64/jvm

tar -xf jdk-7u79-linux-x64.tar.gz -C /usr/lib64/jvm

rm jdk-7u79-linux-x64.tar.gz

update-alternatives --remove-all javac
update-alternatives --remove-all java
update-alternatives --install /usr/bin/javac javac /usr/lib64/jvm/jdk1.7.0_79/bin/javac 1
update-alternatives --install /usr/bin/java java /usr/lib64/jvm/jdk1.7.0_79/bin/java 1
update-alternatives --config javac
update-alternatives --config java