FROM ubuntu:16.04
MAINTAINER yzjamm@hotmail.com
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-client build-essential libgmp3-dev bison flex zip apache2 libapache2-mod-php7.0 php-common php-gd php-curl php-mail php-mail-mime php-mysql php-pear php-db php-mbstring php-mcrypt php-xml php-xmlrpc php7.0-soap php7.0-zip php7.0-intl git vim &&\
pear install DB &&\
apt-get clean &&\
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /var/www/html

RUN git init &&\
rm -fr /var/www/html/moodle &&\ 
git clone https://yzjamm:qwe123asd@gitlab.com/yzjamm/motalk-moodle.git /var/www/html/moodle &&\
mkdir /var/moodledata &&\
chown -R www-data /var/moodledata &&\
chmod -R 0770 /var/moodledata

COPY config.php /var/www/html/moodle/config.php

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]