FROM node:16-alpine

WORKDIR /app

ADD package.json /app/package.json

RUN npm install

ADD . /app

RUN chown -R node /app/node_modules

EXPOSE 3000

RUN npm start