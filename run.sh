#!/usr/bin/env bash

# install puppet
echo '$$ Installing puppet'
sudo apt-get -y -q install puppet-common

# copy the initial setup manifest to the machine
echo '$$ Copy the initial setup manifest to the machine'
cd /etc/puppet/manifests
sudo wget -N --quiet https://raw.github.com/proximitybbdo/puppet/master/manifests/init.pp

# let puppet run the initial task, installing git
echo '$$ Let puppet run the initial task, installing git'
puppet apply /etc/puppet/manifests/init.pp

# now clone our puppet repo on the machine and restart puppet
