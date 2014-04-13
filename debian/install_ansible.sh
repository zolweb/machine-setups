#!/bin/sh

if ! which ansible > /dev/null; then
    echo "Install Ansible"

    if ! which pip > /dev/null; then
        sudo apt-get install -y python-setuptools python-dev
        sudo easy_install pip
    fi

    sudo pip install ansible
fi

# return 0 if ansible is well installed
ansible --version > /dev/null
