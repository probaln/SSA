FROM php:7.2-apache

RUN apt-get update

# Install Postgre PDO
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

COPY index.php /var/www/html/
COPY ports.conf /etc/apache2/ports.conf
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf
EXPOSE 8081

