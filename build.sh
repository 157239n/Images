#!/bin/bash

vendor="157239n"
images=("basic" "apache" "php_fpm" "nginx" "phpmyadmin")
oldImages=("proxy" "php" "php7.0" "mysql" "mysql7.0")

for image in ${images[@]}; do
    eval "docker image build $* --tag $vendor/$image $image/"
done
