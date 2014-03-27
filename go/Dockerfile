FROM marksteve/base
MAINTAINER marksteve

# go get uses bzr :/
RUN apt-add-repository -y ppa:bzr/ppa
RUN apt-get update
RUN apt-get -y install bzr

# Install go
ADD https://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz /tmp/go.tar.gz
RUN tar -C /usr/local -xzf /tmp/go.tar.gz
RUN mkdir /go

ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH
VOLUME ["/go"]
