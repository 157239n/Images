apt-get update
apt-get install software-properties-common -y
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get update

apt-get install certbot python-certbot-apache -y
