FROM php:7.0.11-alpine

MAINTAINER herloct <herloct@gmail.com>

RUN apk update --no-cache && \
    apk add --no-cache su-exec && \
    rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

RUN curl -L http://get.sensiolabs.org/php-cs-fixer.phar > /usr/local/bin/php-cs-fixer && \
    chmod +x /usr/local/bin/php-cs-fixer

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh", "php-cs-fixer"]
CMD ["--version"]
