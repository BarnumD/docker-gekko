FROM node:argon

RUN mkdir -p /usr/src/gekko
WORKDIR /usr/src/gekko

#Download & setup Gekko trading bot
#RUN git clone -b new-bitfinex https://github.com/askmike/gekko.git .; \
RUN git clone https://github.com/askmike/gekko.git .; \
    npm install

CMD [ "node", "gekko" ]
