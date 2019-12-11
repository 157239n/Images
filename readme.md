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
- php7.4

## 157239n/mysql

Extended from 157239n/php

Have these installed:
- mysql-server
- php-mysql
- phpmyadmin (at /var/www/phpmyadmin)

Default user for phpmysql is 157239n and UDZ8qSnsfZeHHKHM for the password

## 157239n/proxy

Extended from 157239n/apache

Enabled these apache modules:
- rewrite
- proxy
- proxy_http
- ssl

Also have pageTemplate.conf and newPage to set things up. It's best to look at the files to understand it.

## 157239n/php7.0

Exactly the same as 157239n/php, but using the default php version, which should be 7-ish

## 157239n/mysql7.0

Exactly the same as 157239n/mysql, but everything on the php end is using the default php version, which should also be 7-ish

## 157239n/proxy

Extended from 157239n/basic. Intended to act as a reverse proxy or serving static content only. If you need dynamic content, just go with the battle-hardened apache. FastCGI in nginx is no faster than mpm_prefork in apache.

Have these installed:
- gnupg2 (required to install nginx)
- nginx (completed with hash and checksums and all of that wonderful mess)

# Tools

## build

Simple enough, builds these images. Also it is expected that you pull the repo down, then build the images yourself. I supposed you know how to do this, because this is stupidly simple. If you don't, you don't know how to use Docker and give Docker Deep Dive a read.

# Contributing

I don't think anyone's gonna contribute to this, so this is more of a note of how to do things:
- Everything additional code should be in ./startup, then it can be natively copied to somewhere else.
- Mounted code should stay in the service's directory (aka ./), not ./startup, and preferably in ./startup/code. This is meant to be easily checked into version control and don't have to worry about service segmentation.
- Entry points should be in ./startup/entry.sh, with tail -f /dev/null at the end to stop the container from exiting.
- If you somehow needs mysql integration, put the initial setup scripts at ./startup/initialMysql. Additional sample data can be placed in ./startup/sampleMysql. Then in your Dockerfile, read (using cat, for example) and then pipes it into the mysql program.

