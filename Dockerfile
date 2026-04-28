FROM alpine:18-latest

WORKDIR /app

COPY package.json .
RUN npm install

COPY index.js .

EXPOSE 3000
RUN ["npm", "start"]