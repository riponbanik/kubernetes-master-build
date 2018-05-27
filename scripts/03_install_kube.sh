wget -O kubernetes.tar.gz https://github.com/kubernetes/kubernetes/releases/download/v1.9.1/kubernetes.tar.gz
tar -vxzf kubernetes.tar.gz 
cd kubernetes/cluster 
# follow the prompts from this command, the defaults are generally fine:
./get-kube-binaries.sh
cd ../server
tar -vxzf kubernetes-server-linux-amd64.tar.gz 
cd kubernetes/server/bin
cp hyperkube kubectl ~/kube/bin/
PATH="$HOME/kube/bin:$PATH"