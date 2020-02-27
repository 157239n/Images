#!/bin/bash

mkdir -p /env
env | grep "MYSQL" | sed "s|\(.*\)=\(.*\)|env[\1]='\2'|" >> /env/php_fpm

/startup/runApache.sh
service php7.4-fpm start
