#!/usr/bin/env bash

echo "Setting up Javascript environment, nvm and node"
echo " "

HOME="/home/vagrant"

# echo "*** Download Node Version Manager ***"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
### reload profile
source $HOME/.profile

echo "*** Install NVM ***"
nvm install 0.10

echo "*** Use NVM ***"
nvm use 0.10

# echo "PATH=/home/vagrant/.nvm/v0.10.17/bin/node" >> ~/.profile

chmod 555 /home/vagrant/.nvm/v0.10.17/bin/node
echo "PATH=$PATH:/home/vagrant/.nvm/v0.10.17/bin/node" >> ~/.profile
source $HOME/.profile

# echo "*** NPM install Express.js ***"
# npm install -g express


# echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
# . ~/.bashrc
# mkdir ~/local
# mkdir ~/node-latest-install
# cd ~/node-latest-install
# curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
# ./configure --prefix=~/local
# make install # ok, fine, this step probably takes more than 30 seconds...
# curl https://npmjs.org/install.sh | sh





# echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.bashrc
# . $HOME/.bashrc
# mkdir $HOME/local
# mkdir $HOME/node-latest-install
# cd $HOME/node-latest-install
# curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
# ./configure --prefix=$HOME/local
# make install # ok, fine, this step probably takes more than 30 seconds...
# curl https://npmjs.org/install.sh | sh


# https://gist.github.com/isaacs/579814
# http://slopjong.de/2012/10/31/how-to-install-the-latest-nodejs-in-ubuntu/
# http://pyjamacoder.com/2011/12/05/vagrant-ubuntu-node-js-and-upstart/



# apt-get install -y build-essential >/dev/null 2>&1

# sudo apt-get install python-software-properties
# sudo add-apt-repository ppa:chris-lea/node.js
# sudo apt-get update
# sudo apt-get install nodejs

