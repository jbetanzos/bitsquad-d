FROM php:7.0-apache

RUN apt-get update
RUN apt-get install -y libapache2-modsecurity

RUN rm -f /etc/apache2/sites-enabled/000-default.conf
RUN mkdir /var/www/bitesquad.com

ADD ./default/000-default.conf /etc/apache2/sites-enabled/
ADD ./bitesquad/bitesquad.conf /etc/apache2/sites-enabled/
ADD ./default/index.html /var/www/html/
ADD ./bitesquad/index.html /var/www/bitesquad.com/
