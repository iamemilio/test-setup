#!/bin/bash

sudo yum install vim bind-utils wget

#setup go env
wget https://dl.google.com/go/go1.12.4.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.12.4.linux-amd64.tar.gz
rm go1.12.4.linux-amd64.tar.gz

echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.bash_profile
echo 'export GOPATH="$HOME/go"' >> ~/.bash_profile
echo 'export GOBIN="$GOPATH/bin"' >> ~/.bash_profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile

git clone https://github.com/openshift-metal3/coredns-mdns.git
git clone https://github.com/openshift-metal3/mdns-publisher.git
