# Generate certificate
export MASTER_IP=`ifconfig ens32 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
cd ~/kube/certs
chmod u+x generate-certs.sh
./generate-certs.sh $MASTER_IP