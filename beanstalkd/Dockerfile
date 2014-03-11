FROM marksteve/base
MAINTAINER marksteve
ADD https://github.com/kr/beanstalkd/archive/v1.9.tar.gz /tmp/
RUN cd /tmp && tar -xzf /tmp/v1.9.tar.gz
RUN cd /tmp/beanstalkd-1.9 && make
RUN mv /tmp/beanstalkd-1.9/beanstalkd /usr/local/bin
RUN mkdir -p /binlog
VOLUME ['/binlog']
EXPOSE 11300
CMD ["beanstalkd", "-b", "/binlog"]
