FROM node:18.0-alpine3.15

WORKDIR /docker-test

COPY package*.json /docker-test/

RUN npm install

ENV PORT=3010

COPY index.js /docker-test/

EXPOSE 3010

CMD ["node" , "index.js"]