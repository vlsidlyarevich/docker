#!bin/bash

GIT_NAME="Vladislav Sidlyarevich"
GIT_EMAIL="vlsidlyarevich@gmail.com"

apt-get install -y git

git config --global user.name "$GIT_NAME"
git config --global user.email $GIT_EMAIL