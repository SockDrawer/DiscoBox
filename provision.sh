#!/usr/bin/env bash

# {{{ Ubuntu utilities

<%= import 'vagrant-shell-scripts/ubuntu.sh' %>
<%= import 'vagrant-shell-scripts/ubuntu-postfix.sh' %>

# }}}

smtp-sink-install '/vagrant/mail';

sudo apt-get -y install git
wget -qO- https://get.docker.com/ | sh

sudo mkdir -p /var/discourse
sudo git clone https://github.com/discourse/discourse_docker.git /var/discourse
cd /var/discourse
sudo cp /vagrant/config.yml containers/app.yml
sudo ./launcher bootstrap app
sudo ./launcher start app