FROM php:7.0.12-alpine

MAINTAINER herloct <herloct@gmail.com>

RUN apk update --no-cache \
    && apk add --no-cache su-exec \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

RUN curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v2.0.0-RC/php-cs-fixer.phar > /usr/local/bin/php-cs-fixer \
    && chmod +x /usr/local/bin/php-cs-fixer

RUN mkdir -p /project
VOLUME ["/project"]
WORKDIR /project

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh", "php-cs-fixer"]
CMD ["--version"]
