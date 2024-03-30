#! /bin/sh
echo "install updates"
apt-get update && apt-get upgrade -y && apt autoremove

echo "Install curl"
apt-get install curl -y

echo
echo "install docker and docker-compose"
curl -sSL https://get.docker.com | sh
apt-get install docker-compose -y

echo
echo "set timezone to Europe/Berlin"
timedatectl set-timezone Europe/Berlin

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
        * ) echo "Please answer y or n.";;
    esac
done
