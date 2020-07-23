#yum update -y

yum install epel-release yum-utils -y
yum install httpd -y
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum-config-manager --enable remi-php73

yum install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd php73-php-pecl-zip -y

#yum install mariadb-server -y
#systemctl start mariadb

#mysql -e "create database opencart"

cd /tmp/
git clone https://github.com/tcooksd/ntierapp.git

cd ./ntierapp

yum install mariadb -y
mysql -u root --password="<%=customOptions.tcontier02%>" -h "<%=evars.MYSQL_IP%>" -e "create database opencart"
mysql -u root --password="<%=customOptions.tcontier02%>" -h "<%=evars.MYSQL_IP%>" opencart < opencart.sql

yum remove mariadb -y


cd /tmp/
git clone https://github.com/tcooksd/opencart-test.git
cd /tmp/opencart-test/
cp -R upload/* /var/www/html/

mv /var/www/html/system/storage /var/www/

chmod -R 777 /var/www/storage
chmod -R 777 /var/www/storage/*
chmod -R 777 /var/www/html/*

systemctl restart httpd

#php  cli_install.php install --username admin --email "<%= customOptions.tcontier01 %>" \
# --password "<%= customOptions.tcontier02 %>" --http_server http://localhost/opencart/ \
# --cloud 0 --db_driver mysqli --db_hostname localhost --db_username root \
#  --db_password pass --db_database opencart --db_port 3306 --db_prefix oc_
