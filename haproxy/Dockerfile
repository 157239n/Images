FROM 157239n/basic
COPY startup /startup
RUN apt-get update \
	&& apt-get install -y haproxy rsyslog \
    && mv /startup/log /usr/local/bin/log \
    && mv /startup/dellog /usr/local/bin/dellog
WORKDIR /startup
EXPOSE 80 443
CMD /startup/entry.sh
