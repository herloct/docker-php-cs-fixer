FROM php:7.1.1-alpine

MAINTAINER herloct <herloct@gmail.com>

ENV PHP_CS_FIXER_VERSION=2.1.1

RUN curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v$PHP_CS_FIXER_VERSION/php-cs-fixer.phar > /usr/local/bin/php-cs-fixer \
    && chmod +x /usr/local/bin/php-cs-fixer \

    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME ["/project"]
WORKDIR /project

ENTRYPOINT ["php-cs-fixer"]
CMD ["--version"]
