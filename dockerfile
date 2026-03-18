# Build stage
FROM node:alpine

WORKDIR /app
RUN npm install

COPY . .
RUN npm install

FROM nginx:alpine

EXPOSE 3000

CMD ["npm", "run", "dev"]