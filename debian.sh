#!/bin/sh

REPO="git@github.com:zolweb/machine-setups.git"
REPO_TMP="/tmp/zol-machine-setup"
# REPO_TMP=`dirname $0`

if ! which git > /dev/null; then
    echo "Install git"
    sudo apt-get install -y git

    echo "Git configuration"
    echo "Your name: "
    read name
    echo "Your email: "
    read email

    git config --global user.name "${name}"
    git config --global user.email "${email}"

    echo "git is now configured globally with: ${name} ${email}"
fi

git clone $REPO $REPO_TMP
cd $REPO_TMP

if ! sh debian/install_ansible.sh; then
    echo "Ansible is not installed, check the output to find what happened"
    exit 1
fi

ansible-playbook -i hosts.yml -K debian_base_playbook.yml
