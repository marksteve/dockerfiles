FROM ubuntu:quantal
MAINTAINER marksteve

RUN apt-get -y install wget
RUN wget -q -O - http://apt.mopidy.com/mopidy.gpg | apt-key add -
RUN wget -q -O /etc/apt/sources.list.d/mopidy.list http://apt.mopidy.com/mopidy.list
RUN apt-get -q update
RUN apt-get -y install mopidy mopidy-soundcloud
RUN apt-get -y install python-setuptools
RUN easy_install cherrypy>=3.2.2

RUN mkdir /var/media

RUN mkdir -p /root/.config/mopidy
ADD mopidy.conf /root/.config/mopidy/mopidy.conf

RUN mkdir -p /root/.local/share/mopidy
VOLUME ["/root/.local/share/mopidy"]

CMD ["mopidy"]
