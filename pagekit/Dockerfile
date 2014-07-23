FROM debian:wheezy
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y install php5 php5-cli
RUN apt-get -y install ca-certificates
RUN apt-get -y install git
RUN apt-get -y install php5-json
RUN apt-get -y install php5-mysql
RUN apt-get -y install php5-curl
RUN php \
  -r "readfile('https://getcomposer.org/installer');" \
  | php -- --install-dir=/usr/local/bin
RUN git clone https://github.com/pagekit/pagekit /pagekit
RUN cd /pagekit && composer.phar install
RUN apt-get -y install nginx php5-fpm
ADD nginx.conf /etc/nginx/nginx.conf
RUN chown -R www-data: /pagekit
CMD ["sh", "-c", "service php5-fpm start && nginx"]
