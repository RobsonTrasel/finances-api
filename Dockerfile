FROM node:14.15.4-alpine3.12

RUN apk add --no-cache bash
RUN npm i -g @nestjs/cli@^8.0.0
USER node 

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
  && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
  && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /home/node/app
