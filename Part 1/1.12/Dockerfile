FROM ubuntu:22.04 

WORKDIR /usr/src/app

EXPOSE 5000

RUN apt-get update
RUN apt-get -y install curl

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs

COPY . . 

RUN npm install 
RUN npm run build 
RUN npm install -g serve 

CMD [ "serve", "-s", "-l", "5000", "build" ]
