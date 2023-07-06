sudo kubeadm init \
	--apiserver-advertise-address=192.168.0.210 \
  --pod-network-cidr=10.10.0.0/16 > ~/kubeadm-join.sh