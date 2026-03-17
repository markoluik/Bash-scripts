#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

# ------------------------
# 1) Baas
# ------------------------
apt-get update -y
apt-get install -y curl ca-certificates lsb-release gnupg debconf-utils wget

# ------------------------
# 2) MySQL 8.0 (Oracle APT + preseed)
# ------------------------
if ! mysql --version 2>/dev/null | grep -q "Ver 8.0"; then
    echo "=== Installing MySQL 8.0 ==="

    # Preseed debconf to avoid TUI
    echo "mysql-apt-config mysql-apt-config/select-server select mysql-8.0" | debconf-set-selections
    echo "mysql-apt-config mysql-apt-config/select-tools select Disabled" | debconf-set-selections

    # Download Oracle MySQL APT package
    wget -O /tmp/mysql-apt-config_0.8.36-1_all.deb https://dev.mysql.com/get/mysql-apt-config_0.8.36-1_all.deb
    dpkg -i /tmp/mysql-apt-config_0.8.36-1_all.deb

    apt-get update -y
    apt-get install -y mysql-server

    # Enable and start service
    systemctl enable --now mysql

    # Setup /root/.my.cnf for passwordless root login
    MYSQL_ROOT_PASSWORD="Qwerty1!"
    cat >/root/.my.cnf <<EOF
[client]
user=root
password=$MYSQL_ROOT_PASSWORD
EOF
    chmod 600 /root/.my.cnf
else
    echo "MySQL 8.0 already installed, skipping."
fi

# ------------------------
# 3) Apache2
# ------------------------
if ! command -v apache2 >/dev/null 2>&1; then
    echo "=== Installing Apache2 ==="
    apt-get install -y apache2
    systemctl enable --now apache2
else
    echo "Apache2 already installed, skipping."
fi

# Overwrite default page
cat >/var/www/html/index.html <<'HTML'
<!doctype html>
<html><head><meta charset="utf-8"><title>It works!</title></head>
<body style="font-family: sans-serif">
  <h1>It works — YOUR_NAME_HERE</h1>
  <p>Installed at: DATE_PLACEHOLDER</p>
</body></html>
HTML
sed -i "s/YOUR_NAME_HERE/Õpilane: Marko Luik IS25/" /var/www/html/index.html
sed -i "s/DATE_PLACEHOLDER/$(date '+%F %T')/" /var/www/html/index.html

# PHP info page
echo "<?php phpinfo(); ?>" >/var/www/html/info.php

# ------------------------
# 4) PHP 7.x
# ------------------------
if ! php -v 2>/dev/null | grep -q "PHP 7"; then
    echo "=== Installing PHP 7.x ==="
    apt-get install -y php7.4 php7.4-cli php7.4-common php7.4-mysql libapache2-mod-php7.4
    systemctl restart apache2
else
    echo "PHP 7.x already installed, skipping."
fi

# ------------------------
# 5) Report
# ------------------------
echo "=== REPORT ==="
apache2 -v | head -n1
php -v | head -n1 || true
mysql --version
echo "apache active:  $(systemctl is-active apache2), enabled: $(systemctl is-enabled apache2)"
echo "mysql  active:  $(systemctl is-active mysql),   enabled: $(systemctl is-enabled mysql)"
echo "Files: /var/www/html/index.html , /var/www/html/info.php"
echo "/root/.my.cnf exists: $( [ -f /root/.my.cnf ] && echo yes || echo no )"
