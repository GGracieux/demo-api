FROM debian:10.2

# Installation apache et php7
RUN apt-get update && apt-get install -y \
    apache2 \
    libapache2-mod-php7.3 \
    php7.3 \
    php-mysql

# Copie du code applicatif
COPY app /www/public

# Copie de la configuration apache et php
COPY conf/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY conf/php/php.ini /etc/php/7.3/apache2/php.ini

# Commande par defaut
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]