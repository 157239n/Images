#!/bin/bash

vendor="157239n"
images=("basic" "apache" "php_fpm7.3" "php_fpm7.4" "nginx" "phpmyadmin" "haproxy")
oldImages=("proxy" "php7.4" "php7.0" "mysql" "mysql7.0")

for image in ${images[@]}; do
    eval "docker image build $* --tag $vendor/$image $image/"
done
