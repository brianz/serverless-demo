FROM node

ENV SERVERLESS_VERSION 0.5.5

RUN npm install serverless@${SERVERLESS_VERSION} -g

RUN mkdir /root/.aws
COPY credentials config /root/.aws/

RUN mkdir /code
WORKDIR /code
