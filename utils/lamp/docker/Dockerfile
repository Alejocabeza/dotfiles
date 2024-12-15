FROM php:apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html
USER www-data
