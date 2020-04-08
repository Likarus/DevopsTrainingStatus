#!/bin/bash
# scritp to install Docker swarm 
# author Quetza
# scritp for Deocker training


echo " ##### Running apt-get update ###### "
echo " ################################### "
sudo apt-get update

echo " ##### installing https, certificates, gnup agent, and software common ######"
echo " ############################################################################ "
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo " ###### adding docker repo key ###### "
echo " #################################### "
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo " ###### Running apt-get update ###### "
echo " #################################### "
sudo apt-get update

echo " ###### Installing Docker CE ###### "
echo " ################################## "
sudo apt-get install -y docker-ce=5:18.09.5~3-0~ubuntu-bionic docker-ce-cli=5:18.09.5~3-0~ubuntu-bionic containerd.io

echo " ###### adding my user id to docker group ######"
echo " ############################################### "
sudo sudo usermod  -G docker `whoami`

echo " plase log out and log in to run docker commands"
echo " ############################################## "