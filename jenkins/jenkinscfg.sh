#!/bin/bash

if [ -s jdk.rpm ]; then
  echo "JDK file exists Skipping download"
else
  wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1IALuSkXsF_6Q5jABqVG0kWqrF1XFfYV3' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1IALuSkXsF_6Q5jABqVG0kWqrF1XFfYV3" -O jdk.rpm  && rm -rf /tmp/cookies.txt
fi

if [ -s jenkins.rpm ]; then
  echo "Java file exists Skipping download"
else
  wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=18k0dPPgopRZQPJCQIXZ0FDERMQNZwARr' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=18k0dPPgopRZQPJCQIXZ0FDERMQNZwARr" -O jenkins.rpm && rm -rf /tmp/cookies.txt
fi

rpm -ivh jdk.rpm
rpm -ivh jenkins.rpm

systemctl start jenkins
firewall-cmd --zone=public --add-port=8080/tcp

echo -e  "\nJava Port is UP\n"

netstat -tnlp | grep java

echo -e "\nUse Port 8080, Your IP address and Jenkins Initial Admin Password is shown below, Use it to login and Reset the Jenkins Password\n"

hostname -I |awk '{print $1}'
cat  /var/lib/jenkins/secrets/initialAdminPassword

