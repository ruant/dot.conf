#!/bin/bash

# Copy .-files to current user dir
cp .* ~/

# update apt
sudo apt update

# apt installation
sudo apt -y install npm
sudo apt -y install docker.io
sudo apt -y install bloodhound
sudo apt -y install neo4j
sudo apt -y install golang-go
sudo apt -y install unzip
sudo apt -y install python3-pip

# npm
sudo npm install -g clipboard-cli

# gem
sudo gem install evil-winrm

# git
cd /opt
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/fuzzdb-project/fuzzdb.git
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
git clone https://github.com/CiscoCXSecurity/enum4linux.git
git clone https://github.com/ropnop/kerbrute.git
git clone https://github.com/ruant/SimpleHTTPServerWithUpload.git

# ngrok
cd /opt
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip

# updog - http server down and upload
pip3 install updog

# impacket
cd /opt
git clone https://github.com/SecureAuthCorp/impacket.git
pip3 install -r /opt/impacket/requirements.txt
cd /opt/impacket/ && sudo python3 ./setup.py install

# kerbrute - compile and install
cd /opt/kerbrute/ && make linux && make windows
