FROM ubuntu
MAINTAINER marksteve
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -q update
RUN apt-get -y install build-essential
ADD https://github.com/kr/beanstalkd/archive/v1.9.tar.gz /tmp/beanstalkd.tar.gz
RUN cd /tmp && tar -xzf beanstalkd.tar.gz && cd beanstalkd-1.9 && make
RUN mv /tmp/beanstalkd-1.9/beanstalkd /usr/local/bin
RUN mkdir -p /binlog
VOLUME ['/binlog']
EXPOSE 11300
ENTRYPOINT ["beanstalkd"]
CMD ["-b", "/binlog"]
