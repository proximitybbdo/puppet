#!/usr/bin/env bash

# install puppet
sudo apt-get -y -q install puppet-common

# copy the initial setup manifest to the machine
cd /etc/puppet/manifests
sudo curl -s https://raw.github.com/proximitybbdo/puppet/master/manifests/init.pp -o

# let puppet run the initial task, installing git
puppet apply /etc/puppet/manifests/init.pp

# now clone our puppet repo on the machine and restart puppet
sudo rm -r /etc/puppet/manifests
sudo rm -r /etc/puppet/modules
sudo git clone git://github.com/proximitybbdo/puppet.git /etc/puppet
