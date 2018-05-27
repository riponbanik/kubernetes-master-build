mkdir ~/kube
mkdir ~/kube/bin
git clone https://github.com/Microsoft/SDN /tmp/k8s 
cd /tmp/k8s/Kubernetes/linux
chmod -R +x *.sh
chmod +x manifest/generate.py
mv * ~/kube/