FROM node:16.16.0-alpine
WORKDIR /app
COPY package*.json ./
COPY tsconfig*.json ./
COPY nest-cli.json ./
# COPY .env ./
RUN npm install 
COPY . ./
RUN npm run build 
CMD npm run start:prod
