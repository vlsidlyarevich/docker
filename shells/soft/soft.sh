#!/bin/bash

mkdir ~/soft

#IDEA installation
wget https://download.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz

tar -xf ideaIU-2016.1.3.tar.gz -C ~/soft/
rm ideaIU-2016.1.3.tar.gz

chmod +x ~/soft/idea-IU-145.1617.8/bin/idea.sh

#Apache tomcat 8 installation
wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz

tar -xf apache-tomcat-8.0.36.tar.gz -C ~/soft/
rm apache-tomcat-8.0.36.tar.gz

chown -R $(whoami) ~/soft/apache-tomcat-8.0.36/
chmod -R 777 ~/soft/apache-tomcat-8.0.36/

#Updating variables.sh
echo CATALINA_HOME= ~/soft/tomcat-8.0.36 >> /etc/profile.d/variables.sh
echo 'PATH=$CATALINA_HOME/bin:$PATH' >> /etc/profile.d/variables.sh