FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install python-software-properties build-essential

RUN add-apt-repository -y ppa:git-core/ppa
RUN add-apt-repository -y ppa:mercurial-ppa/releases
RUN apt-get update
RUN apt-get -y install git mercurial
