#!/bin/bash

mkdir -p /env
sed "s/\(.*\)=\(.*\)/env[\1]='\2'/" >> /env/php_fpm
service php7.4-fpm restart
