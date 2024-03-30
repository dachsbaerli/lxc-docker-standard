# lxc-docker

run this script as root or sudo  
this script does:  
  
apt-get update   
apt-get upgrade -y  
apt autoremove  
apt-get install curl -y  
curl -sSL https://get.docker.com | sh  
apt-get install docker-compose -y  
timedatectl set-timezone Europe/Berlin  
echo ""  
echo "---packages up-to-date---"  
echo "---curl installed---"  
echo "---docker installed---"  
echo ""  
echo "Reboot required"  

#option to reboot
