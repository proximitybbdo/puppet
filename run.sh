#!/usr/bin/env bash

# install puppet
sudo apt-get install puppet-common

# copy the initial setup manifest to the machine
wget -N --quiet https://raw.github.com/proximitybbdo/puppet/master/manifests/init.pp; . /etc/puppet/manifests/init.pp

# let puppet run the initial task, installing git
puppet apply /etc/puppet/manifests/init.pp

# now clone our puppet repo on the machine and restart puppet
service puppet restart
