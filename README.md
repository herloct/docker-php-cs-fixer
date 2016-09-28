[Docker](http://www.docker.com/) image for [PHP Coding Standards Fixer](http://cs.sensiolabs.org/).

[![](https://images.microbadger.com/badges/image/herloct/php-cs-fixer.svg)](http://microbadger.com/images/herloct/php-cs-fixer "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/herloct/php-cs-fixer.svg)](http://microbadger.com/images/herloct/php-cs-fixer "Get your own version badge on microbadger.com")

## What's Inside

This image is based on [official PHP 7.0 image](https://hub.docker.com/_/php/),
using Alpine Linux instead of Debian for smaller size.

## Supported tags and respective `Dockerfile` links

* [`1.12.2`, `latest`](https://github.com/herloct/docker-php-cs-fixer/blob/master/1.12.2/Dockerfile)

## How to use this image

Basic usage using current user id (uid).

```sh
docker run --rm \
    -e LOCAL_USER_ID=$(id -u) \
    -v /local/path:/project \
    herloct/php-cs-fixer [<options>]
```

For example, to fix `src` directory to PSR1 and PSR2 standard.

```sh
docker run --rm \
    -e LOCAL_USER_ID=$(id -u) \
    -v /local/path:/project \
    herloct/php-cs-fixer fix src
```
