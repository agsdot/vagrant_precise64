#!/usr/bin/env bash

echo "Setting up Vim and Quick-Vim settings"
echo " "

HOME="/home/vagrant"

echo "*** Install Vim ***"
apt-get install -y vim >/dev/null 2>&1

echo "*** Download and initialize Plugins ***"
git clone git://github.com/agsdot/quick-vim.git $HOME/quick-vim
cd $HOME/quick-vim
./quick-vim install

echo "*** Ensure permissions work for regular / non-root user ***"
chown -R vagrant $HOME >/dev/null 2>&1 

