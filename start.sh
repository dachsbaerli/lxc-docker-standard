#! /bin/sh
echo "install updates"
apt-get update && apt-get upgrade -y && apt autoremove


echo
echo "set timezone to Europe/Berlin"
timedatectl set-timezone Europe/Berlin


echo "install curl"
apt-get install curl -y


echo
echo "Install docker"
#curl -sSL https://get.docker.com | sh
# apt-get install docker-compose -y
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


echo ""
echo "---packages up-to-date---"
echo "---timezone set---"
echo "---curl installed---"
echo "---docker installed---"
echo ""

echo "Docker installed - Reboot recommended"
# while true; do
#     read -r -p "Do you wish to reboot the system? (y/n): " answer
#     case $answer in
#         [Yy]* ) reboot; break;;
#         [Nn]* ) echo "Please consider rebooting"; exit;;
#         * ) echo "Wrong answer. Please answer y or n.";;
#     esac
# done

