sudo semanage port -a -t ssh_port_t -p tcp 7550
semanage port -l | grep ssh
sudo firewall-cmd --add-port=7550/tcp --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --remove-service=ssh --permanent
sudo firewall-cmd --reload
sed -i 's/22/7550/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
netstat -tunl | grep 7550
