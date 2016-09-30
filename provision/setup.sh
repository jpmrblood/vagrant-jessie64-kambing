#!/bin/bash

echo "Provisioning virtual machine..."
export DEBIAN_FRONTEND="noninteractive"
apt-get -y install debconf-utils > /dev/null

echo "Installing MariaDB..."
debconf-set-selections <<< "mariadb-server mysql-server/root_password password aikeigoh]Caecaht[ikaicoo*k0esh1w"
debconf-set-selections <<< "mariadb-server mysql-server/root_password_again password aikeigoh]Caecaht[ikaicoo*k0esh1w"

apt-get install -y mariadb-server
