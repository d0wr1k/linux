# Tested on Fedora 35


#*To execute this script, follow the steps below.*


- git clone https://github.com/d0wr1k/linux

- cd linux

- chmod +x trocar-portaSSH-fedora-selinux.sh

- ./trocar-portaSSH-fedora-selinux.sh

#*If you want to change the port, you will need to change the bash*

- nano trocar-portaSSH-fedora-selinux.sh

- sudo semanage port -a -t ssh_port_t -p tcp YOURPORT

- sudo firewall-cmd --add-port=YOURPORT/tcp --permanent

- netstat -tunl | grep YOURPORT
- sed -i 's/22/YOURPORT/g' /etc/ssh/sshd_config

