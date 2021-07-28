yum install python3
pip3 install ansible

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
yum install sshpass -y

touch ip.txt

mkdir /etc/ansible
touch /etc/ansible/ansible.cfg
echo "[defaults]" > /etc/ansible/ansible.cfg
echo "inventory=/root/ip.txt" >> /etc/ansible/ansible.cfg
echo "depreaction_warning=False" >> /etc/ansible/ansible.cfg

ansible --version
