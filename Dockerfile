FROM node:latest

COPY package*.json ./


RUN npm install

COPY . .


RUN npm run build


RUN npm install -g serve

EXPOSE 5173

CMD ["serve", "-s", "build", "-l", "5173"]