#!/usr/bin/env bash

# Configure manifest
export MASTER_IP=`ifconfig ens32 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
cd ~/kube/manifest
#./generate.py $MASTER_IP --cluster-cidr 192.168.0.0/16
./generate.py $MASTER_IP --im-sure