#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

mkdir ~/soft

printf "*********${RED}Intellij IDEA installation${NC}*********\n"

#Downloading Intellij IDEA
wget https://download.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz

#Installing Intellij IDEA
tar -xf ideaIU-2016.1.3.tar.gz -C ~/soft/
rm ideaIU-2016.1.3.tar.gz

chmod +x ~/soft/idea-IU-145.1617.8/bin/idea.sh


printf "*********${RED}Apache tomcat 8 installation${NC}*********\n"

#Downloading Apache tomcat 8
wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz

#Installing Apache tomcat 8
tar -xf apache-tomcat-8.0.36.tar.gz -C ~/soft/
rm apache-tomcat-8.0.36.tar.gz

chown -R $(whoami) ~/soft/apache-tomcat-8.0.36/
chmod -R 777 ~/soft/apache-tomcat-8.0.36/

#Updating variables.sh
echo CATALINA_HOME= ~/soft/tomcat-8.0.36 >> /etc/profile.d/variables.sh
echo 'PATH=$CATALINA_HOME/bin:$PATH' >> /etc/profile.d/variables.sh


printf "*********${RED}Apache jmeter installation${NC}*********\n"
#Downloading Apache Jmeter
wget http://www-eu.apache.org/dist//jmeter/binaries/apache-jmeter-3.0.tgz

#Installing Apache Jmeter
tar -xf apache-jmeter-3.0.tgz -C ~/soft/
rm apache-jmeter-3.0.tgz


printf "*********${RED}Apache directory studio installation${NC}*********\n"
#Downloading Apache Directory studio
wget http://www-eu.apache.org/dist/directory/studio/2.0.0.v20151221-M10/ApacheDirectoryStudio-2.0.0.v20151221-M10-linux.gtk.x86_64.tar.gz

#Installing Apache Directory studio
tar -xf ApacheDirectoryStudio-2.0.0.v20151221-M10-linux.gtk.x86_64.tar.gz -C ~/soft/
rm ApacheDirectoryStudio-2.0.0.v20151221-M10-linux.gtk.x86_64.tar.gz

