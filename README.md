[![](https://images.microbadger.com/badges/version/herloct/php-cs-fixer:2.1.1.svg)](https://microbadger.com/images/herloct/php-cs-fixer:2.1.1 "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/herloct/php-cs-fixer:2.1.1.svg)](https://microbadger.com/images/herloct/php-cs-fixer:2.1.1 "Get your own image badge on microbadger.com")

## Supported tags and respective `Dockerfile` links

* [`2.1.3`, `latest`](https://github.com/herloct/docker-php-cs-fixer/blob/2.1.3/Dockerfile)
* [`2.1.1`](https://github.com/herloct/docker-php-cs-fixer/blob/2.1.1/Dockerfile)
* [`2.1.0`](https://github.com/herloct/docker-php-cs-fixer/blob/2.1.0/Dockerfile)
* [`2.0.1`](https://github.com/herloct/docker-php-cs-fixer/blob/2.0.1/Dockerfile)
* [`2.0.0`](https://github.com/herloct/docker-php-cs-fixer/blob/2.0.0/Dockerfile)
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
    herloct/php-cs-fixer [<options>]
```

For example, to fix `src` directory to PSR1 and PSR2 standard.

```sh
docker run --rm \
    --user $(id -u):$(id -g) \
    --volume /local/path:/project \
    herloct/php-cs-fixer fix src
```

## Volumes

* **/project**: Your PHP project directory.
