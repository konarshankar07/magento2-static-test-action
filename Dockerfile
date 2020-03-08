FROM php:7-fpm-alpine

LABEL version="1.0.0"
LABEL repository="https://github.com/konarshankar07/magento2-static-test-action/"
LABEL homepage="https://github.com/konarshankar07"
LABEL maintainer="Shankar Konar <konar.shankar2013@gmail.com>"

LABEL "com.github.actions.name"="GitHub Action for Magento2 Static Test"
LABEL "com.github.actions.description"="A tool to enforce Magento2 coding style and conventions."
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /entrypoint.sh
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

ENTRYPOINT ["/entrypoint.sh"]
