FROM node:14-alpine
WORKDIR /usr/scr/app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 443 80
CMD [ "npm", "run", "start" ]