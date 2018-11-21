FROM node:4.6

RUN mkdir /joinchain
ADD package.json /joinchain/
ADD main.js /joinchain/

RUN cd /joinchain && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /joinchain && npm install && PEERS=$PEERS npm start