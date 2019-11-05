FROM 157239n/basic
COPY ./startup /startup
RUN apt-get update && \
	apt-get install -y apache2 \
	&& mv /startup/apache2.conf /etc/apache2/apache2.conf \
	&& mv /startup/log /usr/local/bin/log \
	&& mv /startup/dellog /usr/local/bin/dellog
