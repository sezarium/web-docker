#!/bin/sh
chown -R www-data:www-data /app
/usr/local/bin/docker-php-entrypoint php-fpm
