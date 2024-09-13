FROM node:hydrogen-buster
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade &&\
    apt-get update &&\
    apt-get install -y git=1:2.20.1-2+deb10u9
EXPOSE  4000
CMD node graphserver.js
