#!/bin/bash

service rsyslog start
service haproxy start

tail -f /dev/null
