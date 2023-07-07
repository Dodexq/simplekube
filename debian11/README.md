# Manual kube install debian11

1. sudo hostnamectl set-hostname <hostname>
2. 1.containerd_install.sh
3. swapoff -a / /etc/fstab
4. sudo mkdir -p /etc/containerd
5. sudo containerd config default | sudo tee /etc/containerd/config.toml
6. sudo nano /etc/containerd/config.toml set SystemdCgroup = true
7. sudo systemctl restart containerd
8. 2.kubelet_install.sh
9. sudo nano /proc/sys/net/ipv4/ip_forward (to 1)
10. 3.cluster_init.sh
11. mkdir -p $HOME/.kube
12. sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
13. sudo chown $(id -u):$(id -g) $HOME/.kube/config
14. kubectl apply -f flannel.yaml
15. kubectl taint nodes --all node-role.kubernetes.io/control-plane-