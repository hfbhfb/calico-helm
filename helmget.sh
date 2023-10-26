# 添加仓库
helm repo add projectcalico https://projectcalico.docs.tigera.io/charts 

helm search repo projectcalico -l


# 安装指定版本
fixVersion=v3.26.3
helm pull projectcalico/tigera-operator --version $fixVersion --untar


