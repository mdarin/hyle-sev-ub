# Setup Environment Hyperledger Fabric in unbuntu linux
### hyle-sev-ub

## Prerequisites
[https://hyperledger-fabric.readthedocs.io/en/latest/prereqs.html]

## Chain of steps
0. install basics (curl,git,make,gcc,g++)
1. clone and run docker and docker-compose installer script(lots of steps)
2. clone and run go installer script(less steps then in docker installation although yet too many)
3. install nodejs and npm
4. install python
5. check installation
6. ...go ahead, try to create the first network!

I supose thet your working directory is $HOME
but feel free with any othor directory to experimets :)

I've tried it for ubuntu 16.04 as hyperledger dox requere

## Preparing environment for Hyperledger

At the beginnig let's intall the git package

<code>$ sudo apt instal -y git</code>

Afterwards, clone setup env sript

<code>$ git clone https://github.com/mdarin/hyle-sev-ub.git</code>

Change dir to cloned one

<code>$ cd hyle-sev-ub</code>

And start setting up process with your sodo passord as a command line argumet of the script

<code>$ ./setup.sh your-sudo-password</code>

_You must restart or logout and login back for applying a new group settings_

<code>$ sudo shutdown -r now</code>

## Installing Hyperledger Fabric's stuff

When you've came back change your working dir to the experimental place, e.g.

<code>$ cd $HOME</code>

And clone installation script for hyperledger's samples,binaries and etc

<code>$ git clone https://github.com/mdarin/hyle-isbdi-ub.git</code>

Change dir to cloned one

<code>$ cd hyle-isbdi-ub</code>

And run the inslallation script

<code>$ ./install your-sudo-password</code>

# check docker group works properly(without sudo)

<code>$ docker run hello-world</code>

## Testing by start Fisrt Network example

<code>$ cd ~/hyperledger-fabric/fabric-samples/first-network/</code>

Sart the script and say Y(es)

<code>$ ./byfn.sh generate</code>

```
Generating certs and genesis block for channel 'mychannel' with CLI timeout of '10' seconds and CLI delay of '3' seconds
Continue? [Y/n] Y
<...>
```

Then start the network

<code>./byfn.sh up</code>

```
Starting for channel 'mychannel' with CLI timeout of '10' seconds and CLI delay of '3' seconds
Continue? [Y/n] Y
proceeding ...
LOCAL_VERSION=1.3.0
DOCKER_IMAGE_VERSION=1.3.0
Creating network "net_byfn" with the default driver
Creating volume "net_orderer.example.com" with default driver
Creating volume "net_peer0.org1.example.com" with default driver
Creating volume "net_peer1.org1.example.com" with default driver
Creating volume "net_peer0.org2.example.com" with default driver
Creating volume "net_peer1.org2.example.com" with default driver
Creating orderer.example.com    ... done
Creating peer1.org2.example.com ... done
Creating peer0.org1.example.com ... done
Creating peer1.org1.example.com ... done
Creating peer0.org2.example.com ... done
Creating cli                    ... done
 ____    _____      _      ____    _____ 
/ ___|  |_   _|    / \    |  _ \  |_   _|
\___ \    | |     / _ \   | |_) |   | |  
 ___) |   | |    / ___ \  |  _ <    | |  
|____/    |_|   /_/   \_\ |_| \_\   |_|  

Build your first network (BYFN) end-to-end test

<..lots of letters :) ..>

========= All GOOD, BYFN execution completed =========== 


 _____   _   _   ____   
| ____| | \ | | |  _ \  
|  _|   |  \| | | | | | 
| |___  | |\  | | |_| | 
|_____| |_| \_| |____/  
```

That's it!
Cangratulations! :D 
