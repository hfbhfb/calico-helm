

# 安装
make install


# 查看pod状态
k get po -A
k get node


# 上传镜像到本地

docker push 192.168.56.1:5000/calico/typha:v3.26.3 
docker push 192.168.56.1:5000/calico/kube-controllers:v3.26.3
docker push 192.168.56.1:5000/calico/apiserver:v3.26.3
docker push 192.168.56.1:5000/calico/cni:v3.26.3
docker push 192.168.56.1:5000/calico/node-driver-registrar:v3.26.3
docker push 192.168.56.1:5000/calico/csi:v3.26.3
docker push 192.168.56.1:5000/calico/pod2daemon-flexvol:v3.26.3
docker push 192.168.56.1:5000/calico/node:v3.26.3



docker tag calico/typha:v3.26.3  192.168.56.1:5000/calico/typha:v3.26.3 
docker tag calico/kube-controllers:v3.26.3 192.168.56.1:5000/calico/kube-controllers:v3.26.3
docker tag calico/apiserver:v3.26.3 192.168.56.1:5000/calico/apiserver:v3.26.3
docker tag calico/cni:v3.26.3 192.168.56.1:5000/calico/cni:v3.26.3
docker tag calico/node-driver-registrar:v3.26.3 192.168.56.1:5000/calico/node-driver-registrar:v3.26.3
docker tag calico/csi:v3.26.3 192.168.56.1:5000/calico/csi:v3.26.3
docker tag calico/pod2daemon-flexvol:v3.26.3 192.168.56.1:5000/calico/pod2daemon-flexvol:v3.26.3
docker tag calico/node:v3.26.3 192.168.56.1:5000/calico/node:v3.26.3



calico/typha:v3.26.3  calico/typha:v3.26.3 
calico/kube-controllers:v3.26.3 calico/kube-controllers:v3.26.3
calico/apiserver:v3.26.3 calico/apiserver:v3.26.3
calico/cni:v3.26.3 calico/cni:v3.26.3
calico/node-driver-registrar:v3.26.3 calico/node-driver-registrar:v3.26.3
calico/csi:v3.26.3 calico/csi:v3.26.3
calico/pod2daemon-flexvol:v3.26.3 calico/pod2daemon-flexvol:v3.26.3
calico/node:v3.26.3 calico/node:v3.26.3


docker images |grep quay

docker tag quay.io/tigera/operator:v1.30.7   192.168.56.1:5000/tigera/operator:v1.30.7
docker push 192.168.56.1:5000/tigera/operator:v1.30.7
