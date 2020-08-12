FROM node:12-alpine3.10
WORKDIR /usr/src/app
COPY package.json .
COPY index.js .
RUN npm install
CMD [ "npm", "start" ]