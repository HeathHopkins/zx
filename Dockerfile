FROM node:18 AS base

RUN npm install -g zx

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["zx"]