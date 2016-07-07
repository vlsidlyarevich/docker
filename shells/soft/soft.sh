#!/bin/bash

#IDEA installation
wget https://download.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz

mkdir ~/soft
tar -xf ideaIU-2016.1.3.tar.gz -C ~/soft/
rm ideaIU-2016.1.3.tar.gz

chmod +x ~/soft/idea-IU-145.1617.8/bin/idea.sh

#Apache tomcat installation
