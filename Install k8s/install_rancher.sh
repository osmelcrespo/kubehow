#!/bin/bash


#Disable Swap
echo Disable Swap

sudo apt update && sudo apt upgrade
sudo swapoff -a
sudo nano /etc/fstab

#Install Docker
echo Install Docker

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER
sudo mv /etc/containerd/config.toml /etc/containerd/config.toml.bak
sudo systemctl restart containerd

docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher:latest

docker ps

b00cdbe58fe1

docker logs  b00cdbe58fe1  2>&1 | grep "Bootstrap Password:" zfmhmwk7vwq5m47f7tc6ljcvxwbrqd9w6kc4nn6vxs6l8k4c8pxk79

aGKUiSBNQgXVR8Y1