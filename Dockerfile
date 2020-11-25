FROM node:12
MAINTAINER ducy

RUN npm install -g pm2@latest  && npm install --silent --save-dev -g typescript

VOLUME ["/app"]
WORKDIR /app

ADD start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 80 443



