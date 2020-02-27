FROM 157239n/basic
COPY startup /startup
RUN apt-get update \
	&& apt-get install -y gnupg2 \
	&& mv /startup/nginx.list /etc/apt/sources.list.d/nginx.list \
	&& wget http://nginx.org/keys/nginx_signing.key \
	&& apt-key add nginx_signing.key \
	&& rm nginx_signing.key \
	&& apt-get update \
	&& apt-get install -y nginx \
    && mv /startup/default.conf /etc/nginx/conf.d/default.conf \
    && mv /startup/log /usr/local/bin/log \
    && mv /startup/dellog /usr/local/bin/dellog
STOPSIGNAL SIGQUIT
EXPOSE 80
CMD /startup/entry.sh
