#!/bin/bash

certbot certonly --apache --non-interactive --agree-tos -m 157239q@gmail.com --redirect --expand --cert-name site \
	-d sub.domain.tld \
	-d sub.sub.domain.tld
