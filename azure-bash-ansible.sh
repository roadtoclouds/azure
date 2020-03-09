#!/bin/bash

# install ansible and run playbook
sudo apt update
sudo apt-get install -y ansible
sudo wget https://raw.githubusercontent.com/roadtoclouds/azure/master/ansible-test-playbook.yml -O /var/tmp
cd /var/tmp
ansible-playbook /var/tmp/ansible-test-playbook.yml
echo "done done done" > /var/tmp/donefile
