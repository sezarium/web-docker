FROM php:8.0-fpm
RUN apt-get update && \
    apt-get install -y apt-utils libpng-dev libzip-dev && \
    apt-get autoclean
RUN docker-php-ext-install gd zip mysqli pdo pdo_mysql
RUN usermod -u 1000 www-data && groupmod -g 1000 www-data
RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
RUN pear config-set php_ini "$PHP_INI_DIR/php.ini"
RUN pecl install xdebug
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
