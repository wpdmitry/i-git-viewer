FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .

RUN npm run production

RUN git clone https://github.com/wpdmitry/progress
RUN git clone https://github.com/wpdmitry/test
RUN cd test
RUN git checkout dev
RUN cd ..

EXPOSE 8000

CMD npm start
