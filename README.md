[![license](https://img.shields.io/github/license/herloct/docker-php-cs-fixer.svg)]()
[![Build Status](https://travis-ci.org/herloct/docker-php-cs-fixer.svg?branch=master)](https://travis-ci.org/herloct/docker-php-cs-fixer)

## Supported tags and respective `Dockerfile` links

* [`2.3.0`, `latest`](https://github.com/herloct/docker-php-cs-fixer/blob/2.3.0/Dockerfile)
* [`2.2.3`](https://github.com/herloct/docker-php-cs-fixer/blob/2.2.3/Dockerfile)
* [`2.1.3`](https://github.com/herloct/docker-php-cs-fixer/blob/2.1.3/Dockerfile)
* [`2.0.1`](https://github.com/herloct/docker-php-cs-fixer/blob/2.0.1/Dockerfile)
* [`1.13.1`](https://github.com/herloct/docker-php-cs-fixer/blob/1.13.1/Dockerfile)

## What is PHP Coding Standards Fixer?

The PHP Coding Standards Fixer tool fixes most issues in your code when you want to follow the PHP coding standards as defined in the PSR-1 and PSR-2 documents and many more.

> http://cs.sensiolabs.org/

## How to use this image

Basic usage using current user.

```sh
docker run --rm \
    --user $(id -u):$(id -g) \
    --volume /local/path:/project \
    herloct/php-cs-fixer[:tag] [<options>]
```

For example, to fix `src` directory to PSR1 and PSR2 standard.

```sh
docker run --rm \
    --user $(id -u):$(id -g) \
    --volume /local/path:/project \
    herloct/php-cs-fixer fix src
```

## Volumes

* `/project`: Your PHP project directory.
