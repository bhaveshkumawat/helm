yum install docker -y
systemctl enable docker --now
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
exclude=kubelet kubeadm kubectl
EOF

 yum install -y  kubectl kubelet  kubeadm  --disableexcludes=kubernetes
 systemctl enable kubelet --now
systemctl status kubelet
cat  /etc/docker/daemon.json
{   "exec-opts": ["native.cgroupdriver=systemd"]; }
vim  /etc/docker/daemon.json
cat  /etc/docker/daemon.json
vim  /etc/docker/daemon.json
systemctl restart docker
docker info | grep -i cgroup
yum install iproute-tc
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sysctl --system
clear
systemctl status docker
clear
kubeadm config images pull
kubeadm init --pod-network-cidr=10.240.0.0/16 --ignore-preflight-errors=NumCPU --ignore-preflight-errors=Mem
kubeadm join 172.31.40.237:6443 --token svjddp.lwo2k002ml8ttlid \
 mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get pods --all-namespaces
echo 3 > /proc/sys/vm/drop_caches
kubeadm token create  --print-join-command
 kubectl apply  -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl get pods --all-namespaces
kubectl get nodes
 kubectl logs coredns-74ff55c5b-c45jz -n kube-system
kubectl edit configmap kube-flannel-cfg -n kube-system
kubectl delete pods -l app=flannel -n kube-system
 cat /var/run/flannel/subnet.env
kubectl edit configmap kube-flannel-cfg -n kube-system
 cat /var/run/flannel/subnet.env
kubectl get pods -l k8s-app=kube-dns -n kube-system
kubectl get pods --all-namespaces
kubectl get pods -l k8s-app=kube-dns -n kube-system
kubectl get nodes
clear
kubectl get nodes
clear
wget https://get.helm.sh/helm-v3.5.2-linux-amd64.tar.gz
tar -zxvf helm-v3.5.2-linux-amd64.tar.gz
cp linux-amd64/helm /usr/bin/
helm version
helm list
clear
helm install myweb myweb/
clear
ls
mkdir  myweb
clear
helm install myweb myweb/
cd myweb
vim Chart.yaml
cd ..
helm install myweb myweb/
helm list
cd myweb
ls
clear
kubectl get nodes
ls
mkdir jenkins
clear
helm install jenkins jenkins/
cp myweb/Chart.yaml jenkins/Chart.yaml
vim jenkins/Chart.yaml
clear
helm install jenkins jenkins/
helm list
helm delete myweb
helm list
helm delete jenkins
vim jenkins/Chart.yaml
clear
helm install jenkins jenkins/
helm list
kubectl create deployment jen --image=jenkins --dry-run -o yaml > deploy.yaml
kubectl create deployment jen --image=jenkins --dry-run=client  -o yaml > deploy.yaml
vim deploy.yaml
cd jenkins
mkdir templates
ls
cd ..
cp deploy.yaml /jenkins/templates/deploy.yaml
cp deploy.yaml jenkins/templates/deploy.yaml
helm history
helm history jenkins
kubectl create deployment jen --image=jenkins 
kubectl get depl
kubectl get dep
kubectl get deploy
kubectl get pods
kubectl get depl
kubectl get pods
watch kubectl get pods
kubectl delete deployment jen
kubectl create deployment jen --image=jenkins:latest 
watch kubectl get pods
kubectl delete deployment jen
docker pull jenkins
docker pull httpd
docker pull Jenkins
docker pull jenkins
docker pull jenkins:2.60.3
kubectl create deployment jen --image=jenkins:2.60.3 
kubectl get pods
clear
kubectl expose deploy jen --port=80 --type=NodePort --dry-run -o yaml > svc.yaml
ls
kubectl expose deploy jen --port=80 --type=NodePort 
kubectl get svc
curl  10.105.28.64:32726 
kubectl expose deploy jen --port=8080 --type=NodePort 
kubectl delete svc jen
kubectl expose deploy jen --port=8080 --type=NodePort 
kubectl get svc
kubectl describe services jen
systemctl stop firewalld
set enforce 0
vim svc.yaml
cat /var/jenkins_home/secrets/initialAdminPassword
kubectl expose deploy jen --port=8080 --type=NodePort --dry-run -o yaml > service.yaml
vim service.yaml
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo docker exec ${CONTAINER_ID or CONTAINER_NAME} cat /var/jenkins_home/secrets/initialAdminPassword
docker ps 
kubectl describe pods
sudo docker exec ${ docker://8c8b149392ea481680b68018c7f1df36d8a7c43ca86d8bbe520f5fefeb9c1759} cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec ${8c8b149392ea481680b68018c7f1df36d8a7c43ca86d8bbe520f5fefeb9c1759} cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec ${jenkins} cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec ${jen-6cbd9cb86b-hdlns} cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec ${jen-6cbd9cb86b} cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec ${jenkins:2.60.3} cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec ${jen} cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec ${jen} date
sudo docker exec jen cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec jen-6cbd9cb86b-hdlns cat /var/jenkins_home/secrets/initialAdminPassword
sudo docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
 printf $(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo.
 printf $(kubectl get secret  jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo.
 printf $(kubectl get secret  jen -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo.
kubectl get secrets
 printf $(kubectl get secret --namespace jenkins sh.helm.release.v1.jenkins.v1 -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo.
 printf $(kubectl get secret  sh.helm.release.v1.jenkins.v1 -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo.
docker logs
docker logs jen
docker logs jenkins
clear
kubectl delete -all
kubectl delete --all
kubectl delete -a
kubectl-delete_all
kubectl -delete-all
kubectl --delete-all
kubectl delete -all deploy
kubectl delete deploy --all
kubectl delete svc --all
kubectl get svc
kubectl get pods
kubectl create deploy wordpress --image=wordpress --dry-run -o yaml > word>yaml 
ls
kubectl create deploy wordpress --image=wordpress --dry-run -o yaml > word.yaml 
ls
rm -f word
rm -f yaml
ls
kubectl create deploy wordpress --image=wordpress 
kubectl get pods
kubectl expose deploy wordpress --port=8080 --type=NodePort
kubectl get svc
kubectl delete svc kubernetes
kubectl delete svc wordpress
kubectl expose deploy wordpress --port=80 --type=NodePort
kubectl get svc
set enforce 0
kubectl create deploy mysql --image=mysql --dry-run -o yaml > mysql.yaml 
vim mysql.yaml
kubectl apply -f mysql.yaml
kubectl get pods
kubectl expose deploy mysql --port=3306 --type=NodePort
kubectl get svc
