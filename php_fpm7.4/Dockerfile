FROM 157239n/apache
COPY startup /startup
RUN apt-get update \
	&& apt-get -y install software-properties-common \
	&& add-apt-repository ppa:ondrej/php \
	&& apt-get update \
	&& apt-get install -y php-fpm php7.4-mysql \
    && a2enmod mpm_event \
    && a2enmod proxy_fcgi \
    && a2enconf php7.4-fpm \
    && sed -e 's/;clear_env = no/clear_env = no/' -i /etc/php/7.4/fpm/pool.d/www.conf \
    && echo include=/env/php_fpm>>/etc/php/7.4/fpm/pool.d/www.conf
CMD /startup/entry.sh
