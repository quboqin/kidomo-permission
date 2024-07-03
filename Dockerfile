FROM node:20.15.0-alpine
RUN npm install -g npm@10.7.0
RUN mkdir -p /var/www/permission
WORKDIR /var/www/permission
ADD . /var/www/permission
RUN npm install
CMD npm run build && npm run start:prod
