FROM node:16
WORKDIR /usr/scr/app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 8800
CMD [ "npm", "run", "start" ]