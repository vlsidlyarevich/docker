#!bin/bash

echo "Java 8 installing script"

#Downloading java 8 jre

wget --no-check-certificate --no-cookies --header \
"Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz

sudo mkdir -p /usr/lib64/jvm

#Installing java 8 jre
tar -xf jdk-8u92-linux-x64.tar.gz -C /usr/lib64/jvm

rm jdk-8u92-linux-x64.tar.gz

update-alternatives --remove-all javac
update-alternatives --remove-all java
update-alternatives --install /usr/bin/javac javac /usr/lib64/jvm/jdk1.8.0_92/bin/javac 1
update-alternatives --install /usr/bin/java java /usr/lib64/jvm/jdk1.8.0_92/bin/java 1
update-alternatives --config javac
update-alternatives --config java

#Updating variables.sh
echo JAVA_HOME=/usr/lib64/jvm/ > /etc/profile.d/variables.sh
echo 'PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile.d/variables.sh