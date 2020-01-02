# Deprecated images

## 157239n/php

Extended from 157239n/apache

Have these installed:
- php7.4

## 157239n/mysql

Extended from 157239n/php

Have these installed:
- mysql-server
- php-mysql
- phpmyadmin (at /var/www/phpmyadmin)

Default user for phpmysql is 157239n and UDZ8qSnsfZeHHKHM for the password

## 157239n/php7.0

Exactly the same as 157239n/php, but using the default php version, which should be 7-ish

## 157239n/mysql7.0

Exactly the same as 157239n/mysql, but everything on the php end is using the default php version, which should also be 7-ish

## 157239n/proxy

Extended from 157239n/apache

Deprecated. Initial idea is to act as a reverse proxy, but Apache sucks at being a good reverse proxy, so please move to 157239n/nginx

Enabled these apache modules:
- rewrite
- proxy
- proxy\_http
- ssl

Also have pageTemplate.conf and newPage to set things up. It's best to look at the files to understand it.




