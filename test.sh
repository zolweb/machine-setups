#!/bin/sh

USER=`whoami`

if ! sh debian/install_ansible.sh; then
    echo "Ansible is not installed, check the output to find what happened"
    exit 1
fi

ansible-playbook -i hosts.yml --sudo debian_base_playbook.yml -vvvv --extra-vars "user=${USER}"
