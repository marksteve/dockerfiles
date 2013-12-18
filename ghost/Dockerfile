FROM ubuntu
MAINTAINER marksteve
RUN apt-get update -qq
RUN apt-get install -y python-software-properties python g++ make
RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update -qq
RUN apt-get install -y ruby rubygems
RUN apt-get install -y nodejs
RUN gem install sass
RUN gem install bourbon
RUN apt-get install -y git
RUN git clone https://github.com/TryGhost/Ghost.git /ghost
WORKDIR /ghost
RUN npm install
RUN npm install -g grunt-cli
RUN grunt init
RUN grunt prod
RUN npm install -g forever
RUN npm install mysql
ENV NODE_ENV production
EXPOSE 2368
ADD config.js /ghost/config.js
CMD ["forever", "index.js"]
