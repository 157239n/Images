FROM 157239n/apache
COPY ./startup /startup
RUN a2enmod ssl \ 
	&& a2enmod rewrite \
	&& a2enmod proxy \
	&& a2enmod proxy_http \
	&& mv /startup/newPage /usr/local/bin/newPage
