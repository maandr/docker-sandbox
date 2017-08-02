FROM node:6-alpine

EXPOSE 3000

WORKDIR /usr/src/app

COPY ./app .

RUN npm install

CMD [ "npm", "start" ]