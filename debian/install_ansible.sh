#!/bin/sh

if ! which ansible > /dev/null; then
    echo "Install Ansible"
    sudo apt-get install python-setuptools python-dev
    sudo easy_install pip
    sudo pip install ansible
fi

# return 0 if ansible is well installed
ansible --version > /dev/null
