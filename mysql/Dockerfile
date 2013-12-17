FROM ubuntu
MAINTAINER marksteve
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -q update
RUN apt-get -y install mysql-server
ADD setup /tmp/setup
RUN /tmp/setup
EXPOSE 3306
VOLUME ["/var/lib/mysql"]
CMD ["mysqld_safe", "--bind-address=0.0.0.0"]
