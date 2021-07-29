touch /etc/yum.repos.d/docker.repo

echo "[docker]" > /etc/yum.repos.d/docker.repo
echo "name=docker" >> /etc/yum.repos.d/docker.repo
echo "baseurl=https://download.docker.com/linux/centos/7/x86_64/stable" >> /etc/yum.repos.d/docker.repo
echo "gpgcheck=0" >> /etc/yum.repos.d/docker.repo

yum install docker-ce -y --nobest

systemctl start docker
systemctl enable docker

firewall-cmd --zone=public --add-masquerade --permanent
firewall-cmd --zone=public --add-port=80/tcp
firewall-cmd --zone=public --add-port=433/tcp

firewall-cmd --reload

systemctl restart docker

yum repolist
