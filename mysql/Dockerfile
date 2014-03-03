FROM marksteve/base
MAINTAINER marksteve
RUN apt-get -y install mysql-server
EXPOSE 3306
ADD setup /tmp/setup
ONBUILD ADD setup.sql /tmp/setup.sql
ONBUILD RUN /tmp/setup
ONBUILD RUN rm /tmp/setup && rm /tmp/setup.sql
ONBUILD VOLUME ["/var/lib/mysql"]
CMD ["mysqld_safe", "--bind-address=0.0.0.0"]
