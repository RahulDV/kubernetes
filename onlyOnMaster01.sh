#On kubemaster01 initialize the k8s cluster
#--apiserver-advertise-address is required as we are running on VM which typically has many ethernet interfaces
#--pod-network-cidr is used by calico network
#--control-plane-endpoint points to the load balancer
kubeadm init --control-plane-endpoint="172.16.16.100:6443" --upload-certs --apiserver-advertise-address=172.16.16.101 --pod-network-cidr=192.168.0.0/16


#When this command get executed, It will spit out command to join more masters and command to join more workers

