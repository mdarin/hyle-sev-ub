#!/bin/bash
#####
# entire unistallation 
# v.1
#
###

password=""
if [ -n "$1" ]
then
  password=$1
  shift
  echo "password: $password"
else
  echo "You should define sudo password!"     
	echo "Usage: cmd <sudo-password>"
  exit 1
fi

echo
echo
echo "#####################################################################"
echo "### RESETTING THE ENVIRONMENT FOR HYPERLEDGER FABRIC INSTALLATION ###"
echo "#####################################################################"
echo
echo 
echo "Removing basics"
echo $password | sudo -S apt purge -y curl make gcc g++
echo
echo "Removing docker and docker-compose"
#git clone https://github.com/mdarin/do-ub.git
./do-ub/uninstall.sh $password

echo "Removing golang"
#git clone https://github.com/mdarin/go-ub.git
./go-ub/uninstall.sh $password

# nodejs and npm
echo
echo 
echo "### Uninstalling NodeJS adn NPM ###"
echo "###################################" 
echo
echo "Uninstalling nodejs and npm"
echo
echo $password | sudo -S apt purge -y nodejs npm
# python
echo 
echo
echo "### Uninstalling Python 2.7 ###"
echo "###############################"
echo 
#echo $password | sudo -S apt purge -y python2.7
echo
echo "Cleaning up"
echo
echo $password | sudo -S apt autoremove -y
echo
echo
echo "### Checking correct uninstallation by getting versions of already absences packages ###"
echo "########################################################################################"
echo
docker --version
docker-compose --version
go version
echo "nodejs version $(node -v)"
echo "npm version $(npm -v)"
python --version
echo
echo
exit 0
