FROM ubuntu
MAINTAINER marksteve
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install python-software-properties
RUN apt-add-repository -y ppa:rwky/redis
RUN apt-get -q update
RUN apt-get -y install redis-server
RUN mkdir -p /data
VOLUME ['/data']
EXPOSE 6379
CMD ["redis-server", "--dir", "/data"]
