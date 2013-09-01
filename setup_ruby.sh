#!/usr/bin/env bash

echo "Setting up Ruby environment, RVM, Ruby, and Gems"
echo " "

echo "Install RVM"
# install RVM
curl -L https://get.rvm.io | bash
# ensure rvm is loaded during vagrant setup of ruby
source /etc/profile.d/rvm.sh
# http://ubuntuforums.org/showthread.php?t=1583028 Add user vagrant to rvm group
usermod -G rvm -a 'vagrant'



echo "Install Ruby 2.0.0"
#install ruby 2.0.0
rvm install 2.0.0
rvm default 2.0.0



echo "Install Bundler"
# install a gem
gem install bundler



# source /usr/local/rvm/scripts/rvm