#!/bin/bash

# install ansible and run playbook
sudo apt update
sudo apt-get install -y ansible
sed -i 's/#log_path/log_path/g' /etc/ansible/ansible.cfg
sudo wget https://raw.githubusercontent.com/roadtoclouds/azure/master/ansible-test-playbook.yml -O /var/tmp
cd /var/tmp
ansible-playbook -vv /var/tmp/ansible-test-playbook.yml >> /var/tmp/ansibleoutput
echo "done done done" >> /var/tmp/donefile
