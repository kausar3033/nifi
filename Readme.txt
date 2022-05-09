# Welcoem to iBOS Ltd.

# Author : Kausar (iBOS)
# Copyright (c) Tutorialspoint.com
# Script follows here
# Install Docker,kubeadm,kubelet,kubectl,Openssh,Nginx,jare,Edit etc/fstab >> swap memory

First time to ready master nodes then worker

# For Master Nodes & Worker Nodes

#Installation Guide Kubernetes A to Z


[Download pre-requirment and master-kubernetes & readme in master machin and dowanload pre-requirment and worker-kubernetes in worker machin ]

[ After download the files please change the file permission>> chmod +x pre-requirment.sh , chmod +x master-kubernetes.sh , chmod +x worker-kubernetes.sh ]

#For Master Nodes:

step -1: sudo su -  >> change the normal user to root user [always work from root user]

step -2: vi /etc/fstab >> Edit /etc/fstab file [ commentout the swap memory mounted line ex:#/swap.img   none  swap   sw    0   0 ]

step -3: ./pre-requirment.sh  >> Execute pre-requirment.sh from root user /root directory [ check the current directory pwd ]

step -4: ./master-kubernetes.sh >> Execute kubernetes.sh from root user /root directory [ check the current directory pwd ]

step -5: In the shall executing time you asking Do you want to continue? [Y/n] say Y/n

For Worker Nodes:

step -1: sudo su -  >> change the normal user to root user [always work from root user]

step -2: vi /etc/fstab >> Edit /etc/fstab file [ commentout the swap memory mounted line ex:#/swap.img   none  swap   sw    0   0 ]

step -3: ./pre-requirment.sh >> Execute pre-requirment.sh from root user /root directory [ check the current directory pwd ]

step -4: step -4: ./worker-kubernetes.sh >> Execute kubernetes.sh from root user /root directory [ check the current directory pwd ]

step -5: In the shall executing time , asking Do you want to continue? [Y/n] say Y

step -6: Now times to join with master nodes

Final step after Master & Worker nodes are ready .


step -1: kubeadm token create --print-join-command  >> RUN on Master Node machin to get join token 

#output : ex:[kubeadm join 10.209.99.225:6443 --token ukzmux.wn3k3ykh5ldo9557 
          --discovery-token-ca-cert-hash sha256:7221e7dcfc1e7bbfdf9dcb83c6f43e4aa51ce558f07831948ea039b23d181329] == token is inside in []
step -2: Token >> copy the token from master node after get token and execute on which worker nodes want to join to master node. we will see the join status if successfully added

step -3: kubectl get nodes >> To check join status if status is ready and worker nodes are showing 

# Happy Kubernetes


# If somehow error occoured ,od conflict installation remove all of configurating oneclick 

step -1: ./remove.sh >> Execute  

step -2: In the shall executing time ,asking Do you want to continue? [Y/n] y 

After remove configuration form first level.
