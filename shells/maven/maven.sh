#!/bin/bash

echo "Apache maven installing script"

#Downloading apache maven

wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz

#Installing apache maven
tar -xf apache-maven-3.3.9-bin.tar.gz -C /opt/

rm apache-maven-3.3.9-bin.tar.gz

#Updating variables.sh
echo M2_HOME=/opt/apache-maven-3.3.9 >> /etc/profile.d/variables.sh
echo 'M2=$M2_HOME/bin' >> /etc/profile.d/variables.sh