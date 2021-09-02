#Do not run this script directly. This script contains generated commands from kubeadm init execution on master01.
#This command was executed on kubemaster2 node
kubeadm join 172.16.16.100:6443 --token sxthzm.4e6shx9ty7xs84lm \
    --discovery-token-ca-cert-hash sha256:80076da7c332fdb2c01ecfdee292b1bb8f676005845dc7a5b6e05996c443aeea \
    --control-plane --certificate-key 291e7961e0da8f99bcc47b2cf95aa9229c7b3ee29911ec4098c4c73fd28698e5 --apiserver-advertise-address 172.16.16.102