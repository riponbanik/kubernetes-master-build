#!/usr/bin/env bash

# Config and run services
export MASTER_IP=`ifconfig ens32 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`

# This will create a configuration at ~/.kube/config
cd ~/kube
./configure-kubectl.sh $MASTER_IP

# Now, copy the file to where the pods will later expect it to be:
mkdir ~/kube/kubelet
sudo cp ~/.kube/config ~/kube/kubelet/

# Run kubelet - The Kubernetes "client", kub
cd ~/kube
sudo ./start-kubelet.sh

# Run Kubeproxy
cd ~/kube
sudo ./start-kubeproxy.sh 192.168