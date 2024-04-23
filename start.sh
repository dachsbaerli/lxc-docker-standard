#! /bin/sh
echo "install updates"
apt-get update && apt-get upgrade -y && apt autoremove

echo "install curl"
apt-get install curl -y

echo
echo "Install docker"
curl -sSL https://get.docker.com | sh
# apt-get install docker-compose -y

echo
echo "set timezone to Europe/Berlin"
timedatectl set-timezone Europe/Berlin

echo ""
echo "---packages up-to-date---"
echo "---curl installed---"
echo "---docker installed---"
echo ""

echo "Docker installed - Reboot recommended"
while true; do
    read -r -p "Do you wish to reboot the system? (y/n): " answer
    case $answer in
        [Yy]* ) reboot; break;;
        [Nn]* ) echo "Please consider rebooting"; exit;;
        * ) echo "Wrong answer. Please answer y or n.";;
    esac
done

