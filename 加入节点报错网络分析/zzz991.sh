

kubectl get node


ssh dd

iptables -t nat -L > nat249.txt
scp dd:/root/nat249.txt ./



ssh de
iptables -t nat -L > nat250.txt
scp de:/root/nat250.txt ./


ssh dd "route -n"
ssh de "route -n"


ssh de "tcpdump -nnSX -c 20 -i eth0 src 192.168.56.249 "
ssh de "tcpdump -v -nn -i eth0 src 192.168.56.249 "

# tcpdump 只过滤新创建的连接
tcpdump -nnSX ' tcp[tcpflags] & tcp-syn != 0 and tcp[tcpflags] & tcp-ack == 0'
tcpdump -v -nn -i eth0 src 192.168.56.250 



ssh de "curl -v 192.168.56.249:6443"
ssh de "curl -v 10.247.0.1:443"



ssh de "iptables -t nat -L -n"  > nat250.txt
ssh de "iptables -t filter -L -n"  > filter250.txt




