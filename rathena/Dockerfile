FROM ubuntu:trusty
RUN apt-get update

# rathena
RUN apt-get -y install git make gcc libmysqlclient-dev zlib1g-dev libpcre3-dev
RUN apt-get -y install mysql-client
RUN git clone https://github.com/rathena/rathena.git /rathena
WORKDIR /rathena
RUN ./configure
RUN make server
RUN chmod a+x *-server
# Login Server
EXPOSE 6900
# Char Server
EXPOSE 6121
# Map Server
EXPOSE 5121
