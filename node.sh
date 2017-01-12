#!/bin/bash

apt-get update && apt-get -y upgrade

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install -y nodejs
