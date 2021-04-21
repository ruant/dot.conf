#!/bin/bash

# apt installation
sudo apt install npm
sudo apt install docker.io
sudo apt install bloodhound
sudo apt install neo4j
sudo apt install golang-go

# npm
sudo npm install -g clipboard-cli

# gem
sudo gem install evil-winrm

# git
cd /opt
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/fuzzdb-project/fuzzdb.git
git clone https://github.com/ruant/SimpleHTTPServerWithUpload
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
git clone https://github.com/SecureAuthCorp/impacket.git
git clone https://github.com/CiscoCXSecurity/enum4linux.git
git clone https://github.com/ropnop/kerbrute.git

# pip it!
pip3 install -r /opt/impacket/requirements.txt
cd /opt/impacket/ && sudo python3 ./setup.py install

# Compile and install kerbrute
cd /opt/kerbrute/ && make linux && make windows
