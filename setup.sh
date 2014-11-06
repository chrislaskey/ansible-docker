#!/usr/bin/env bash

if ! which ansible > /dev/null 2>&1; then
    echo ''
    echo 'ERROR required `ansible` package not found. To install Ansible see:'
    echo 'http://docs.ansible.com/intro_installation.html'
    echo ''
    echo "Or if you're in a rush, the easy way to install is using either Brew or Python pip:"
    echo '    $ brew install ansible'
    echo '    $ sudo pip install ansible'
    echo ''
    exit 72;
fi

if ! which ansible-galaxy > /dev/null 2>&1; then
    echo ''
    echo 'ERROR could not find `ansible-galaxy` command.'
    echo 'Make sure Ansible 1.5+ is installed and `ansible-galaxy` is in the shell path.'
    echo ''
    exit 73;
fi

if ! which ansible-playbook > /dev/null 2>&1; then
    echo ''
    echo 'ERROR could not find `ansible-playbook` command.'
    echo 'Make sure Ansible 1.5+ is installed and `ansible-playbook` is in the shell path.'
    echo ''
    exit 74;
fi

echo ''
echo "# Installing required ansible playbook:"
echo ''

ansible-galaxy install --force -p ./ansible/roles/ angstwad.docker_ubuntu

echo ''
echo '# Successfully set up the ansible environment!'
echo ''
echo 'Next steps:'
echo '1. Create a user on the Ubuntu VM with `sudo` permissions'
echo '2. Update the `hosts` file with the VMs correct ip address'
echo '3. Execute `ansible-playbook -i hosts -u <remote-user-with-sudo> ./ansible/playbook-docker.yml`'
echo ''
