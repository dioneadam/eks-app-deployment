FROM node:10
WORKDIR /home/node/app
COPY package*.json ./
RUN npm install
COPY . .
USER node
EXPOSE 3000
CMD [ "node", "bin/server.js" ]