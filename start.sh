#! /bin/sh
apt-get update && apt-get upgrade -y && apt autoremove \
&& apt-get install curl -y \
&& curl -sSL https://get.docker.com | sh \
&& apt-get install docker-compose -y \
&& timedatectl set-timezone Europe/Berlin
echo ""
echo "---packages up-to-date---"
echo "---curl installed---"
echo "---docker installed---"
echo ""
echo "Docker installed - Reboot required"


while true; do
    read -r -p "Do you wish to reboot the system? (Y/N): " answer
    case $answer in
        [Yy]* ) reboot; break;;
        [Nn]* ) echo "Please consider rebooting"; exit;;
        * ) echo "Please answer Y or N.";;
    esac
done
