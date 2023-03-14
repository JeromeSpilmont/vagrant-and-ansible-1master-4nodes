#!/bin/bash
echo "---------------------------------------------" 
sudo apt-get update && sudo apt-get install openssh-client -y  && sudo apt install ansible -y 
echo "---------------------------------------------" 
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa  -N '' 
#sudo chown vagrant/vagrant /home/vagrant/.ssh/id_rsa 
#sudo chown vagrant/vagrant /home/vagrant/.ssh/id_rsa.pub 
echo "---------------------------------------------" 
sudo cp /home/vagrant/hosts /etc/ansible/hosts
echo "---------------------------------------------" 
ssh-copy-id vagrant@172.16.1.51
ssh-copy-id vagrant@172.16.1.52 
ssh-copy-id vagrant@172.16.1.53
ssh-copy-id vagrant@172.16.1.54
echo "---------------------------------------------" 
ansible-playbook /home/vagrant/playbook.yaml