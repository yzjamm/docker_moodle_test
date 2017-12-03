#! /bin/bash
set -e
cp /root/config.php /var/www/html
sed -i "s/dbuserhere/${DB_USER}/g" /var/www/html/config.php
sed -i "s/dbpwdhere/${DB_PWD}/g" /var/www/html/config.php
sed -i "s/dbnamehere/${DB_NAME}/g" /var/www/html/config.php
sed -i "s/dbhosthere/${DB_HOST}/g" /var/www/html/config.php
sed -i "s#wwwroothere#${WWWROOT}#g" /var/www/html/config.php
sed -i "s#dataroothere#${DATAROOT}#g" /var/www/html/config.php
#chown -R 33 "/var/www/html"
exec gosu root /bin/bash -- /usr/sbin/apache2ctl -D FOREGROUND
