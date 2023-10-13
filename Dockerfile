FROM node:20.8-bookworm-slim
FROM glibc/libc6:2.36-9+deb12u3
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
