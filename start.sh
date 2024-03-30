#! /bin/sh
apt-get update && apt-get upgrade -y && apt autoremove \
&& apt-get install curl -y \
&& curl -sSL https://get.docker.com | sh \
&& apt-get install docker-compose -y \
&& timedatectl set-timezone Europe/Berlin

echo "packages up-to-date"
echo "curl installed"
echo "docker installed"
