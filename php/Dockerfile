FROM php:8.0-fpm
RUN apt-get update && \
    apt-get install -y apt-utils libpng-dev libzip-dev && \
    apt-get autoclean
RUN docker-php-ext-install gd zip mysqli pdo pdo_mysql
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY ./custom_entrypoint.sh /
RUN chmod +x /custom_entrypoint.sh
ENTRYPOINT ["/custom_entrypoint.sh"]
