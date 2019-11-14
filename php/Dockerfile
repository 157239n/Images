FROM 157239n/apache
RUN apt-get update \
	&& apt -y install software-properties-common \
	&& add-apt-repository ppa:ondrej/php \
	&& apt-get update \
	&& apt-get install -y php7.4

