#!/bin/bash

# first boot, install various packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y python3-pip tree
sudo cp interfaces.yaml /etc/netplan/01-netcfg.yaml
sudo netplan apply

# install pipenv
pip3 install --user pipenv

# add user installed packages to PATH
echo "export PATH=$(python3 -m site --user-base)/bin:"'$PATH' >> ~/.bash_aliases
source ~/.bashrc

# install project... ToDo
