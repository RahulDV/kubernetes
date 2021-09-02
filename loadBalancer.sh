#update the package manager and install HA Proxy
apt update && apt install -y haproxy

#Configure HA proxy to balance master nodes on backend
#Add the following to EOF of following HAProxy Config file
#vim /etc/haproxy/haproxy.cfg
#Goto EOF and paste following 
#frontend kubernetes-frontend
#    bind 172.16.16.100:6443
#    mode tcp
#    option tcplog
#    default_backend kubernetes-backend
#
#backend kubernetes-backend
#    mode tcp
#    option tcp-check
#    balance roundrobin
#    server kubemaster1 172.16.16.101:6443 check fall 3 rise 2
#    server kubemaster2 172.16.16.102:6443 check fall 3 rise 2

#save :wq!

#Restart the proxy
systemctl restart haproxy

#Check the status of proxy running
systemctl status haproxy
