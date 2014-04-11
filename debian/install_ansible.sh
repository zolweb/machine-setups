#!/bin/sh

if ! which ansible > /dev/null; then
    echo "Install Ansible"
    sudo apt-add-repository -y ppa:rquillo/ansible
    sudo apt-get update
    sudo apt-get install -y ansible
fi

# return 0 if ansible is well installed
ansible --version > /dev/null
