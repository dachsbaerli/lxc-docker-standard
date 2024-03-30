#! /bin/sh
apt-get update && apt-get upgrade -y && apt autoremove
apt install curl -y
curl -sSL https://get.docker.com | sh
apt-get install docker-compose
echo "packages up-to-date"
echo "curl installed"
echo "docker installed"
