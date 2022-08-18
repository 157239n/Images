FROM 157239n/basic
COPY startup /startup
RUN apt-get update \
	&& apt-get install -y gnupg2 \
	&& apt-get update \
	&& apt-get install -y nginx \
    && mv /startup/default.conf /etc/nginx/conf.d/default.conf \
    && mv /startup/log /usr/local/bin/log \
    && mv /startup/dellog /usr/local/bin/dellog
STOPSIGNAL SIGQUIT
EXPOSE 80
CMD /startup/entry.sh
