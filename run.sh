#!/usr/bin/env bash

if ! which ansible-playbook > /dev/null 2>&1; then
    echo ''
    echo 'ERROR could not find `ansible-playbook` command.'
    echo 'Make sure Ansible 1.5+ is installed and `ansible-playbook` is in the shell path.'
    echo ''
    exit 73;
fi

ansible-playbook -i hosts ./ansible/playbook-docker.yml
