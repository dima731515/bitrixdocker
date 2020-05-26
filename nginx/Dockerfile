FROM nginx:latest

ADD conf/nginx.conf /etc/nginx/
ADD conf/default.conf /etc/nginx/conf.d/
ADD conf/upstream.conf /etc/nginx/conf.d/
ADD sites-available/portal.transistor.local.conf /etc/nginx/sites-available/

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
