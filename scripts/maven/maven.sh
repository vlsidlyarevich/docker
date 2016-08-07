#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

printf "*********${RED}Apache maven 3 installation${NC}*********\n"

#Downloading apache maven-3
wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz

#Installing apache maven-3
tar -xf apache-maven-3.3.9-bin.tar.gz -C /opt/

rm apache-maven-3.3.9-bin.tar.gz

#Updating variables.sh
export M2_HOME=/opt/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$PATH:$M2
