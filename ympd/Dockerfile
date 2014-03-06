FROM ubuntu:saucy
MAINTAINER marksteve

RUN apt-get update
RUN apt-get -y install build-essential cmake git
RUN apt-get -y install libssl-dev
RUN git clone git://git.libwebsockets.org/libwebsockets /tmp/libwebsockets
RUN git clone https://github.com/notandy/ympd.git /tmp/ympd

RUN mkdir /tmp/libwebsockets/build
WORKDIR /tmp/libwebsockets/build
RUN cmake .. -DCMAKE_INSTALL_PREFIX:PATH=/usr
RUN sudo make install

RUN apt-get -y install libmpdclient-dev

RUN mkdir /tmp/ympd/build
WORKDIR /tmp/ympd/build
RUN cmake .. -DCMAKE_INSTALL_PREFIX:PATH=/usr
RUN sudo make install

CMD ["ympd"]
