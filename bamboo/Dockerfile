FROM ubuntu:12.04
MAINTAINER marksteve

# Install dependencies

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' >> /etc/apt/sources.list.d/mongodb.list
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise universe' >> /etc/apt/sources.list
RUN apt-get -q update

RUN apt-get -y install git python-setuptools
RUN apt-get -y install mongodb-10gen
RUN apt-get -y install gfortran libatlas-base-dev python-dev build-essential
RUN easy_install pip
RUN pip install virtualenvwrapper

# Setup user

RUN useradd -m -s /bin/bash bamboo

# Persist mongodb

RUN mkdir -p /data/db
RUN chown -R bamboo:bamboo /data/db
VOLUME ["/data/db"]

# Setup bamboo

RUN mkdir -p /var/www/bamboo/log
RUN mkdir -p /var/www/bamboo/shared/pids
RUN git clone https://github.com/SEL-Columbia/bamboo.git /var/www/bamboo/current
RUN chown -R bamboo:bamboo /var/www/bamboo

# Setup environment

USER bamboo
ENV HOME /home/bamboo
ENV WORKON_HOME /home/bamboo/.virtualenvs

# Setup virtualenv

WORKDIR /var/www/bamboo/current
RUN bash -c 'source virtualenvwrapper.sh && mkvirtualenv bamboo'
RUN $WORKON_HOME/bamboo/bin/pip install numpy==1.6.2
RUN $WORKON_HOME/bamboo/bin/pip install -r deploy/requirements/requirements.pip
RUN $WORKON_HOME/bamboo/bin/pip install uwsgi

ADD scripts/run_server.sh /var/www/bamboo/current/scripts/run_server.sh
CMD ["./scripts/run_server.sh"]

