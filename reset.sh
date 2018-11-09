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
#sudo apt install -y curl git make gcc g++
curl --version
git --version
make --version
gcc --version
g++ --version

echo "Removing docker and docker-compose"
#git clone https://github.com/mdarin/do-ub.git
#./do-ub/uninstall.sh $passwor

echo "Removing golang"
git clone https://github.com/mdarin/go-ub.git
#./go-ub/uninstall.sh $password

# nodejs and npm
echo
echo 
echo "### Uninstalling NodeJS adn NPM ###"
echo "###################################" 
echo
echo "Uninstalling nodejs and npm"
echo
#echo $password | sudo -S apt purge -y nodejs npm

# python
echo 
echo
echo "### Uninstalling Python ###"
echo "###########################"
echo 

#echo $password | sudo -S apt purge -y python
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

exit 0
