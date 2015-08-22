#!/usr/bin/env bash

#Git and docker
sudo apt-get -y install git
wget -qO- https://get.docker.com/ | sh

#Ruby for the fake mail server
cd
mkdir ruby
cd ruby
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
sudo apt-get -y install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.2.2
rvm use 2.2.2 --default

#Fake mail server
gem install mailcatcher
mailcatcher --http-ip 0.0.0.0

#Discourse
sudo mkdir -p /var/discourse
sudo git clone https://github.com/discourse/discourse_docker.git /var/discourse
cd /var/discourse
sudo cp /vagrant/config.yml containers/app.yml
sudo ./launcher bootstrap app
sudo ./launcher start app