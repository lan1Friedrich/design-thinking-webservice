FROM node:lts-alpine
WORKDIR /app/solar

COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 50047

CMD ["node", "index.js"]