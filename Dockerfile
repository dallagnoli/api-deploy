FROM node:18-alpine

WORKDIR /app

COPY package.json .
RUN npm install

RUN mkdir -p src
COPY index.js ./src/index.js

EXPOSE 3000

CMD ["npm", "start"]