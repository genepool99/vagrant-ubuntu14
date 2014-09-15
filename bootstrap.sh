#!/usr/bin/env bash

#Apache
apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

#MySQL
apt-get install debconf-utils -y
debconf-set-selections <<< "mysql-server-5.5 mysql-server-5.5/root_password password pass"
debconf-set-selections <<< "mysql-server-5.5 mysql-server-5.5/root_password_again password pass"
debconf-set-selections <<< "mysql-server mysql-server/root_password password pass"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password pass"
debconf-set-selections <<< "mysql-server mysql-server-5.5/root_password password pass"
debconf-set-selections <<< "mysql-server mysql-server-5.5/root_password_again password pass"
sudo apt-get install -y mysql-server-5.5 libapache2-mod-auth-mysql

#PHP
apt-get install -y php5 libapache2-mod-php5 php5-mcrypt
apt-get install -y php5-curl
apt-get install -y php5-gd
apt-get install -y php5-mysql
apt-get install -y php5-xmlrpc
apt-get install -y php5-tidy
#apt-get install php5-sqlite
apt-get install -y php5-mcrypt
apt-get install -y php5-xdebug
apt-get install -y php5-xhprof
apt-get install -y php5-json