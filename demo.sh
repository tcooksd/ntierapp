yum update -y

yum install epel-release yum-utils -y
yum install httpd -y
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum-config-manager --enable remi-php73

yum install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd -y

cd /tmp/
git clone https://github.com/opencart/opencart.git
cd /tmp/opencart/upload/install/

php  cli_install.php install --username admin --email "<%= customOptions.tcontier01 %>" \
 --password "<%= customOptions.tcontier02 %>" --http_server http://localhost/opencart/ \
 --cloud 0 --db_driver mysqli --db_hostname localhost --db_username root \
  --db_password pass --db_database opencart --db_port 3306 --db_prefix oc_
