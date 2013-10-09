#!/usr/bin/env bash

echo "-----------------------"
echo "It's provisioning time!"
echo "-----------------------"

cp -a /vagrant/fs/etc/apt/sources.list /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade -yq --force-yes
reset # Package upgrade seems to mess up the terminal

sudo apt-get install -yq --force-yes openjdk-7-jre

echo "-----------------------"
echo "Done."
echo "-----------------------"
