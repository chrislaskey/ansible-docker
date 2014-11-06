About
================================================================================

An ansible playbook for setting up the Docker Engine on Ubuntu +12.04. Relies
on the [angstwad/docker.ubuntu](https://github.com/angstwad/docker.ubuntu)
role.

Tested with Ubuntu 14.04.

### Requirements

- A local installation of Ansible +1.5
- A target virtual machine running Ubuntu +12.04

### Directions

Run the included `setup.sh` file, which will verify the local Ansible install
and download the required dependences.

On success, update the `hosts` file with the VM's ip address. Then run:

    ansible-playbook -i hosts -u USER ansible/playbook-docker.yml

Note the USER must have SSH and `sudo` access on the VM.


License
================================================================================

All code written by me is released under MIT license. See the attached
license.txt file for more information, including commentary on license choice.
