#!/usr/bin/env bash

echo "Setting up Ruby environment, rbenv and ruby"
echo " "

HOME="/home/vagrant"

echo "*** Cloning rbenv ***"
git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.profile
echo 'eval "$(rbenv init -)"' >> $HOME/.profile

echo "*** Cloning rbenv ruby-build ***"
git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build


source $HOME/.profile
# exec $SHELL -l

echo "*** Install Ruby 2.0.0 ***"
rbenv install 2.0.0-p247
rbenv rehash
rbenv global 2.0.0-p247 

echo "*** Install a gem, bootstrap sass ***"
gem install bootstrap-sass

echo "*** Ensure permissions work for regular / non-root user ***"
chown -R vagrant $HOME #>/dev/null 2>&1 
chown -R vagrant $HOME/.rbenv #>/dev/null 2>&1 

# echo "Setting up Ruby environment, RVM, Ruby, and Gems"
# echo " "

# echo "Install RVM"
# # install RVM
# curl -L https://get.rvm.io | bash
# # ensure rvm is loaded during vagrant setup of ruby
# source /etc/profile.d/rvm.sh
# # http://ubuntuforums.org/showthread.php?t=1583028 Add user vagrant to rvm group
# usermod -G rvm -a 'vagrant'



# echo "Install Ruby 2.0.0"
# #install ruby 2.0.0
# rvm install 2.0.0
# rvm default 2.0.0

# echo [[ -s "/usr/local/rvm/scripts/rvm" ]] >> ~/.profile
# echo source "/usr/local/rvm/scripts/rvm"  >> ~/.profile
# source ~/.profile

# echo "Install Bundler"
# # install a gem
# gem install bundler

# # source /usr/local/rvm/scripts/rvm
# [[ -s "/usr/local/rvm/scripts/rvm" ]]
# source "/usr/local/rvm/scripts/rvm" 