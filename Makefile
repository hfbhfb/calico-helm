
helmAppName=calico1

build-template:
	rm -Rf outdir-${helmAppName}
	helm template tigera-operator/ --namespace monitoring --values ./values.yaml --name-template ${helmAppName} --output-dir outdir-${helmAppName}

install:
	helm install tigera-operator/ --namespace monitoring --values ./values.yaml --name-template ${helmAppName} 

uninstall:
	helm uninstall --namespace monitoring ${helmAppName} 


all:
	bash helmget.sh
