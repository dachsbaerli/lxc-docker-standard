# lxc-docker

run this script as root or with sudo  
this script does:  
  
install updates  
Install curl  
install docker with docker-compose  
set timezone to Europe/Berlin  
timedatectl set-timezone Europe/Berlin  
  
option to reboot automatically  

run from cli:  
wget https://raw.githubusercontent.com/dachsbaerli/lxc-docker-standard/main/start.sh && chmod +x start.sh && ./start.sh
