FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install php5
RUN apt-get -y install libapache2-mod-php5
RUN apt-get -y install git

RUN git clone https://github.com/vthibault/roBrowser.git /roBrowser

ADD roBrowser.conf /etc/apache2/sites-available/
RUN a2ensite roBrowser.conf

RUN a2enmod headers
RUN a2enmod rewrite

ADD .htaccess /roBrowser/client/
ADD configs.php /roBrowser/client/

RUN chown -R www-data: /roBrowser

EXPOSE 8080

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
