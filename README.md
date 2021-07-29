# BashScripts
- Make sure we have proper internet connection to your VM
- Make sure the OS image file is attached 
- move to downloads folder 
```bash
cd /root/Downloads/
```
- Clone the repository using the command
```bash
git clone https://github.com/gpnikhil/BashScripts.git
```
---
## Bash Script to configure yum and correct the screen resolution in a Virtual Machine
- Move to the yum_repo directory 
- Make the setup.sh file executable, so that we can run the file
```bash
chmod +x setup.sh
```
- Run the setup.sh to start the configuration
```bash
./setup.sh
```
#### Our YUM configuration is done now
---
## Bash Script to configure Ansible
- Move to the ansible directory
- Make the ansiblecfg.sh file executable, so that we can run the file
```bash
chmod +x ansiblecfg.sh
```
- Run the ansiblecfg.sh to start the configuration
```bash
./ansiblecfg.sh
```
#### Our Ansible configuration is done now
---
## Bash Script to configure Docker
- Move to the docker directory
- Make the dockercfg.sh file executable, so that we can run the file
```bash
chmod +x ansiblecfg.sh
```
- Run the dockercfg.sh to start the configuration
```bash
./ansiblecfg.sh
```
#### Our Docker configuration is done now
