FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .

RUN tar -xf repo1.tar

RUN npm run production

EXPOSE 8000

CMD npm start
