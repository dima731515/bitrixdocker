FROM gendosu/alpine-apache:latest

MAINTAINER pavletto

RUN apk add --no-cache apache2-proxy; \
     addgroup -g 1000 -S www; \
     adduser -G www -u 1000 -s /bin/sh -D www;

COPY conf /etc/apache2
COPY www /var/www

EXPOSE 8888

CMD /usr/sbin/httpd -DFOREGROUND 
