FROM node:14-alpine
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 443 80
CMD [ "npm", "run", "start" ]
