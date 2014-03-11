FROM marksteve/base
MAINTAINER marksteve
RUN apt-add-repository -y ppa:rwky/redis
RUN apt-get update
RUN apt-get -y install redis-server
RUN mkdir -p /data
VOLUME ['/data']
EXPOSE 6379
CMD ["redis-server", "--dir", "/data"]
