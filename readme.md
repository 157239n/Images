# Basic images

These are a collection of images that I have built for myself. It includes:

## 157239n/basic

Extended from ubuntu

Have these installed:
- vim, with custom configs
- curl
- wget
- git

Have environment variable DEBIAN_FRONTEND set to noninteractive, which kinda install everything behind the scenes

## 157239n/apache

Extended from 157239n/basic

Have apache installed and have custom apache configurations too (just some minor permission changes, not major things like virtual hosts or ports).

This does not assume the final topology of your application, which is kinda nice because it won't restrict you to the way I've been doing it.

Have these tools in /startup (so you have to be in the directory to invoke):
- certbot.sh, invoking it will install certbot, a tool by Let's Encrypt Certificate Authority for getting SSL certificate. This is not installed as default.
- deployCerts.sh. Add domain names here using -d options, then execute it to receive the certs. You still have to wire them up though.

Have these tools in /usr/local/bin (so you can invoke it directly):
- log: show apache logs at /var/log/apache2/error.log
- dellog: empty the logs

## 157239n/php

Extended from 157239n/apache

Have these installed:
- php
- mysql-server
- php-mysql
- phpmyadmin (at /var/www/phpmyadmin)

Default user for phpmysql is 157239n and UDZ8qSnsfZeHHKHM for the password

## 157239n/proxy

Extended from 157239n/apache

Yeah don't use this just yet, it hasn't been finalized.

Expose ports 80 and 443

## 157239n/basesite

Extended from 157239n/php

Also don't use this just yet, it still hasn't been finalized

# Tools

## build

Simple enough, builds these images

## push

Also simple enough, push these to hub.docker.com

