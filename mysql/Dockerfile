FROM 157239n/php
COPY startup /startup
RUN apt-get update && \
	apt-get install -y \
		mysql-server \
		php7.4-mysql \
	&& mv /startup/phpmyadmin /var/www/phpmyadmin \
	&& service mysql start \
	&& mysql -e"create user 157239n@localhost identified by 'UDZ8qSnsfZeHHKHM';grant all privileges on *.* to 157239n@localhost;" \
	&& service mysql stop \
