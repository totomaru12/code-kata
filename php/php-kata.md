# environment
- macOS 10.x
- php --version > PHP 7.1.14

# setup
```
$ composer install
```

# test
```
$ ./vendor/bin/kahlan --reporter=verbose
```

# setup (initial)
```
$ curl -sS https://getcomposer.org/installer | php
$ mv composer.phar /usr/local/bin/composer

version check
$ composer -V
Composer version 1.6.5 2018-05-04 11:44:59

$ composer require --dev kahlan/kahlan
```
