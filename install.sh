#!/bin/bash

# apt installation
sudo apt install npm
sudo apt install docker.io
sudo apt install bloodhound
sudo apt install neo4j

# npm
sudo npm install -g clipboard-cli

# git
cd /opt
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/fuzzdb-project/fuzzdb.git
git clone https://github.com/ruant/SimpleHTTPServerWithUpload
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
git clone https://github.com/SecureAuthCorp/impacket.git

# pip it!
pip3 install -r /opt/impacket/requirements.txt
cd /opt/impacket/ && sudo python3 ./setup.py install
