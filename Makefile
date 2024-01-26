
helmAppName=calico1

build-template:
	rm -Rf outdir-${helmAppName}
	helm template tigera-operator/ --namespace monitoring --values ./values.yaml --name-template ${helmAppName} --output-dir outdir-${helmAppName}

install:
	-kubectl create ns monitoring
	helm install tigera-operator/ --namespace monitoring --values ./values.yaml --name-template ${helmAppName} 

uninstall:
	helm uninstall --namespace monitoring ${helmAppName} 


helmgetpack:
	#bash helmget.sh
	# 添加仓库
	helm repo add projectcalico https://projectcalico.docs.tigera.io/charts 
	helm search repo projectcalico -l
	# 安装指定版本
	fixVersion=v3.26.3
	helm pull projectcalico/tigera-operator --version $fixVersion --untar

