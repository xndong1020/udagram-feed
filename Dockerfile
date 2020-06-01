FROM node:12

WORKDIR /app

ADD ./package.json /app

RUN npm install -D

COPY ./src /app

RUN npm build

EXPOSE 8100

CMD npm start
