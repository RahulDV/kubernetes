#Download helm binaries
wget https://get.helm.sh/helm-v2.12.2-linux-arm.tar.gz –no-check-certificate

#un tar the helm tar ball and move to usr bin folder
tar -zxvf helm-v2.12.2-linux-arm.tar.gz
sudo mv ./linux-arm/helm /usr/local/bin/helm

#Create the service account for tiller to deploy. Name of service accoutn is also tiller.
kubectl -n kube-system create serviceaccount tiller

#Create the custom role binding
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller

#Check the cluster role binding creation
kubectl get clusterrolebinding tiller


#initialize helm
helm init --service-account tiller --stable-repo-url https://kubernetes-sigs.github.io/service-catalog

#Check tiller pod creation
kubectl -n kube-system get pods


#All the above commands are done to install helm 2.16 version. 2.16 version had problems hence I migrated to helm 3.6.3



wget https://get.helm.sh/helm-v3.6.3-linux-arm.tar.gz –no-check-certificate

#un tar the helm tar ball and move to usr bin folder
tar -zxvf helm-v3.6.3-linux-arm.tar.gz
sudo mv ./linux-arm/helm /usr/local/bin/helm





