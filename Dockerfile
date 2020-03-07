FROM php:7-fpm-alpine

COPY entrypoint.sh /entrypoint.sh
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

ENTRYPOINT ["/entrypoint.sh"]
