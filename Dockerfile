FROM node:21-alpine

ENV TZ="Europe/London"

USER root

RUN apk add --no-cache \
    openjdk17-jre-headless \
    curl \
    aws-cli

WORKDIR /app

COPY . .
RUN npm install

ENTRYPOINT [ "npm", "run", "test:publish" ]
