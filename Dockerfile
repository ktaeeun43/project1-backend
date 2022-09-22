FROM node:16
WORKDIR /usr/src/app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 8800
CMD [ "npm", "run", "start" ]
