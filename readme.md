# Basic images

These are a collection of images that I have built for myself. It includes:

## 157239n/basic

Extended from ubuntu

Have these installed:
- vim, with custom configs
- curl
- wget
- git

Have environment variable DEBIAN\_FRONTEND set to noninteractive, which kinda install everything behind the scenes

## 157239n/apache

Extended from 157239n/basic

Have apache installed and have custom apache configurations too (just some minor permission changes, not major things like virtual hosts or ports).

Have these tools in /startup (so you have to be in the directory to invoke):
- runApache.sh: this will start apache up
- entry.sh: default command, will execute runApache.sh and suspend the process, which keeps the container from dying

Have these tools in /usr/local/bin (so you can invoke it directly):
- log: show apache logs at /var/log/apache2/error.log
- dellog: empty the logs

Have these ports exposed:
- 80

## 157239n/nginx

Extended from 157239n/basic. Intended to act as a reverse proxy or serve static content only. If you need dynamic content, just go with 157239n/php\_fpm

Have these installed:
- gnupg2 (required to install nginx)
- nginx (completed with hash and checksums and all of that wonderful mess)

## 157239n/php\_fpm

Extended from 157239n/apache

Have these tools in /startup:
- setupFpmEnv.sh: you can pipe an environment file here and it will setup the correct environment variables for the php-fpm daemon.
- runPhpFpm.sh: this will execute runApache.sh and start php-fpm up. Will automatically load environment variables that look like MYSQL\* for convenience sake
- entry.sh: default command, will execute runPhpFpm.sh and suspend the process, which keeps the container from dying

The default setup and default command should work well for you. If not, you can define your own entry.sh, which broadly speaking should:
- Execute runPhpFpm.sh, which will start php-fpm and apache2
- Load environment variables from a file using setupFpmEnv.sh
- Suspend the process, which is commonly `tail -f /dev/null`

## 157239n/phpmyadmin

Extended from 157239n/php\_fpm

Have phpmyadmin installed.

Configurable using these environment variables:
- MYSQL\_HOST, default is localhost

# Tools

## build

Simple enough, builds these images. Also it is expected that you pull the repo down, then build the images yourself. I supposed you know how to do this, because this is stupidly simple. If you don't, you don't know how to use Docker and give Docker Deep Dive a read.

## utils

This is a folder containing various boilerplate scripts that you might find useful:
- certbot.sh, invoking it will install certbot, a tool by Let's Encrypt Certificate Authority for getting SSL certificate.
- deployCerts.sh. Add domain names here using -d options, then execute it to receive the certs. You still have to wire them up though.

# Extra notes

## Working with mysql

The best practice is to follow the mysql official [image](https://hub.docker.com/_/mysql). Below is a TL;DR version of it:
- Set MYSQL\_USER
- Set MYSQL\_PASSWORD
- Set MYSQL\_RANDOM\_ROOT\_PASSWORD=yes or MYSQL\_ROOT\_PASSWORD
- Set MYSQL\_DATABASE
- Add startup scripts (.sh, .sql) at /docker-entrypoint-initdb.d (mount it) so if mysql is empty, this script will set everything up

# Contributing

I don't think anyone's gonna contribute to this, so this is more of a note of how to do things:
- Everything additional code should be in ./startup, then it can be natively copied to somewhere else.
- Mounted code should stay in the service's directory (aka ./), not ./startup, and preferably in ./startup/code. This is meant to be easily checked into version control and don't have to worry about service segmentation.
- Entry points should be in ./startup/entry.sh, with tail -f /dev/null at the end to stop the container from exiting.
- If you somehow needs mysql integration, put the initial setup scripts at ./startup/initialMysql. Additional sample data can be placed in ./startup/sampleMysql. Then in your Dockerfile, read (using cat, for example) and then pipes it into the mysql program.

