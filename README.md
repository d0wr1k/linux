# Tested on Fedora 35


To execute this script, follow the steps below.


git clone https://github.com/d0wr1k/linux.git
cd SSH-Fedora-RHLE-CENTOS
chmod +x trocar-porta-fedora-selinux.sh
./trocar-porta-fedora-selinux.sh

*****If you want to change the port, you will need to change the bash****

# nano trocar-porta-fedora-selinux.sh

sudo semanage port -a -t ssh_port_t -p tcp YOURPORT

sudo firewall-cmd --add-port=YOURPORT/tcp --permanent

netstat -tunl | grep YOURPORT
