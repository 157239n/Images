FROM 157239n/apache
COPY ./startup /startup
RUN apt-get update && \
	apt-get install -y \
		php \
		mysql-server \
		php-mysql \
	&& mv /startup/phpmyadmin /var/www/phpmyadmin \
	&& service mysql start \
	&& mysql -e"create user 157239n@localhost identified by 'UDZ8qSnsfZeHHKHM';grant all privileges on *.* to 157239n@localhost;" \
	&& service mysql stop \
