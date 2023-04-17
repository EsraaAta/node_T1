FROM node:14-alpine
WORKDIR /app
COPY serve.js package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD node serve.js