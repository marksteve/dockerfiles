FROM ubuntu
MAINTAINER marksteve
VERSION 1.1.2

RUN apt-get -y install python-software-properties

# Install mercurial and git for go get
RUN apt-add-repository -y ppa:mercurial-ppa/releases
RUN apt-add-repository -y ppa:git-core/ppa
RUN apt-add-repository -y ppa:bzr/ppa
RUN apt-get -qq update
RUN apt-get -y install mercurial git bzr

# Install go
ADD https://go.googlecode.com/files/go1.1.2.linux-amd64.tar.gz /tmp/go.tar.gz
RUN tar -C /usr/local -xzf /tmp/go.tar.gz

ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin
ENTRYPOINT ["go"]
CMD ["run", "main.go"]
