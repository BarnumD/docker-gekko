FROM node:argon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Download & setup Gekko trading bot
#RUN git clone -b new-bitfinex https://github.com/askmike/gekko.git .; \
RUN git clone https://github.com/askmike/gekko.git .; \
    npm install

COPY config.js /usr/src/app/config.js

EXPOSE 8080 80

CMD [ "node", "gekko" ]
