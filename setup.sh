#!/bin/bash

function get_distro()
{
    type apt    &> /dev/null && { echo ubuntu; return; }
    type yum    &> /dev/null && { echo fedora; return; }
    type pacman &> /dev/null && { echo arch; return; }
}

distro=`get_distro`


case $distro in
  ubuntu)
    sudo apt install -y software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt update
    sudo apt install -y ansible
    ;;
  fedora)
    sudo dnf install -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    sudo dnf check-update
    sudo dnf install -y ansible
    ;;
  arch)
    sudo pacman -S ansible
    ;;
  * )
    echo "Unsupported Distro"
  ;;
esac
