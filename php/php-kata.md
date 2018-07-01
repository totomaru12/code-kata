# php-kata

## environment

- php --version > PHP 7.1.14

## setup

```terminal
$ composer install
```

## test

```terminal
$ ./vendor/bin/kahlan --reporter=verbose
```

## setup (initial)

```terminal
$ curl -sS https://getcomposer.org/installer | php
$ mv composer.phar /usr/local/bin/composer

version check
$ composer -V
Composer version 1.6.5 2018-05-04 11:44:59

$ composer require --dev kahlan/kahlan
```
