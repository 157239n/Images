FROM 157239n/apache
COPY ./startup /startup
RUN a2enmod ssl \ 
	&& a2enmod rewrite \
	&& a2enmod proxy \
	&& a2enmod proxy_http \
	&& /startup/certbot.sh \
	&& mv /startup/newPage /usr/local/bin/newPage
EXPOSE 80 443
WORKDIR /startup
ENTRYPOINT ["/startup/entry.sh"]
