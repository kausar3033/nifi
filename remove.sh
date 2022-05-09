# Welcoem to iBOS Ltd.

#!/bin/sh

# Author : Kausar (iBOS)
# Copyright (c) Tutorialspoint.com
# Script follows here:
## Remove Docker,kubeadm,kubelet,kubectl

sudo systemctl stop docker.socket

sudo apt remove --purge docker-ce docker-ce-cli containerd.io

sudo kubeadm reset

sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube*

sudo apt-get autoremove

sudo rm -rf ~/.kube

sudo apt autoremove -y

sudo apt autoclean



#Do you want to continue? [Y/n] y