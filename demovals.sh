
#!/bin/bash
echo "<%= customOptions.tcontier01 %>" >> /tmp/info
echo "<%= customOptions.tcontier02 %>" >> /tmp/info
echo "outputting directory of launch"
echo "########################################"
ls
echo "########################################"



cd /tmp/
git clone https://github.com/tcooksd/ntierapp.git

cd ./ntierapp

yum install mariadb-server -y
systemctl start mariadb

mysql -e "create database opencart"
mysql opencart < opencart.sql
