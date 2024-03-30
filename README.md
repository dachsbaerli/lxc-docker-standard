# lxc-docker

run this script as root or sudo  
this script does:  
  
install updates  
Install curl  
install docker and docker-compose  
set timezone to Europe/Berlin  
timedatectl set-timezone Europe/Berlin  
  
option to reboot automatically  

run  
wget https://github.com/dachsbaerli/lxc-docker-standard/blob/main/start.sh && chmod +x start.sh && ./start.sh  
