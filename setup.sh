#!/bin/bash
#####
# entire automation of ubuntu environment preparation for hyperledger-fabric
# v.1
#
# ruquirements
# * Docker version 17.06.2-ce or greater
# * Go version 1.11.x is required.
# * Node.js - version 8.9.x or greater
# * Python 2.7
###

#TODO(darin-m): It must adjust variable parameters accordingly OS that scripts are running on!

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
echo "######################################################################"
echo "### SETTING UP THE ENVIRONMENT FOR HYPERLEDGER FABRIC INSTALLATION ###"
echo "######################################################################"
echo
echo 
echo "Preparing basics"
echo 
echo $password | sudo -S apt install -y curl make gcc g++
curl --version
make --version
gcc --version
g++ --version

#TODO ajust structure and paths
echo
echo "Installing docker and docker-compose"
git clone https://github.com/mdarin/do-ub.git
./do-ub/install.sh $password

echo "Installing golang"
git clone https://github.com/mdarin/go-ub.git
./go-ub/install.sh $password

# nodejs and npm
echo
echo 
echo "### Installing NodeJS adn NPM ###"
echo "#################################" 
echo
echo "Preparing for nodejs installaton"
echo
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
echo
echo "Installing nodejs"
echo
echo $password | sudo -S apt install -y nodejs
echo
echo "Updating npm"
echo
echo $password | sudo -S npm i -g npm@latest

# python
echo 
echo
echo "### Installing Python ###"
echo "#########################"
echo 
echo $password | sudo -S apt install -y python
echo
echo
echo "### Checking correct installation by getting versions of intalled packages ###"
echo "##############################################################################"
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

