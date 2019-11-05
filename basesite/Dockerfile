FROM 157239n/php
COPY ./startup /startup
RUN mv /startup/phpmyadmin.conf /etc/apache2/sites-available/phpmyadmin.conf \
	&& a2ensite phpmyadmin \
	&& echo "\nListen 5000" >> /etc/apache2/ports.conf
# 80 for http and https traffic, 5000 for phpMyAdmin screen
EXPOSE 80 5000
WORKDIR /startup
ENTRYPOINT ["/startup/entry.sh"]
