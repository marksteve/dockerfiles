FROM ubuntu:trusty
RUN apt-get update

# rathena
RUN apt-get -y install git make gcc libmysqlclient-dev zlib1g-dev libpcre3-dev
RUN apt-get -y install mysql-client
RUN git clone https://github.com/rathena/rathena.git /rathena
WORKDIR /rathena
RUN ./configure
RUN make server
RUN chmod a+x *-server
# Login Server
EXPOSE 6900
# Char Server
EXPOSE 6121
# Map Server
EXPOSE 5121

# roBrowser
RUN apt-get -y install apache2
RUN apt-get -y install php5
RUN apt-get -y install libapache2-mod-php5
RUN git clone https://github.com/vthibault/roBrowser.git /roBrowser
ADD roBrowser/roBrowser.conf /etc/apache2/sites-available/
RUN a2ensite roBrowser.conf
RUN a2enmod headers
RUN a2enmod rewrite
ADD roBrowser/.htaccess /roBrowser/client/
ADD roBrowser/configs.php /roBrowser/client/
RUN chown -R www-data: /roBrowser
EXPOSE 8080
