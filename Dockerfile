FROM node:22.7-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade &&\
    apt-get update &&\
    apt-get install -y git
EXPOSE  4000
CMD node graphserver.js
