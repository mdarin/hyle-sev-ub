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

echo
echo
echo "######################################################################"
echo "### SETTING UP THE ENVIRONMENT FOR HYPERLEDGER FABRIC INSTALLATION ###"
echo "######################################################################"
echo
echo 
echo "Preparing basics"
#sudo apt install -y curl git make gcc g++
curl --version
git --version
make --version
gcc --version
g++ --version

echo "docker and docker-compose"
git clone https://github.com/mdarin/do-ub.git
#./do-ub/install.sh $passwor

echo "golang"
git clone https://github.com/mdarin/go-ub.git
#./go-ub/install.sh $password

# nodejs and npm
echo
echo 
echo "### Installing NodeJS adn NPM ###"
echo "#################################" 
echo
echo "Preparing for nodejs installaton"
echo
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
echo
echo "Installing nodejs"
echo
#sudo apt install -y nodejs
echo
echo "Updating npm"
echo
#echo $password | sudo -S npm i -g npm@latest

# python
echo 
echo
echo "### Installing Python ###"
ehco "#########################"
echo 
#echo $password | sudo -S apt install -y python
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

exit 0

