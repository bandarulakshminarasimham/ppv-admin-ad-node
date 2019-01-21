FROM node:10.12.0-alpine

WORKDIR /app

ADD . /app/

RUN apk add --no-cache make gcc g++ python


RUN npm install

ENV HOST 0.0.0.0

EXPOSE 80

CMD ["npm", "start"]