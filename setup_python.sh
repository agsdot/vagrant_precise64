#!/usr/bin/env bash

echo "Setting up Python environment, python-dev, python-pip, and virtualenv"
echo " "

HOME="/home/vagrant"

echo "*** Install python-dev and python-pip ***"
apt-get install -y python-dev python-pip #>/dev/null 2>&1

echo "*** pip install virtualenv ***"
pip install virtualenv

echo "*** Ensure permissions work for regular / non-root user ***"
chown -R vagrant /usr/local #>/dev/null 2>&1 
chown -R vagrant $HOME #>/dev/null 2>&1 
