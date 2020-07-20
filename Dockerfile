FROM node:current-slim
WORKDIR /var/www
COPY package.json package-lock.json ./
RUN npm install
COPY src ./
EXPOSE 80
CMD ["node", "app.js"]
