#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli

wget https://github.com/containerd/containerd/releases/download/v1.6.12/containerd-1.6.12-linux-amd64.tar.gz
tar xvf containerd-1.6.12-linux-amd64.tar.gz
cd bin
cp * /usr/bin/
systemctl start containerd
systemctl enable containerd
