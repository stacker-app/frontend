FROM node:alpine


WORKDIR /code

COPY package*.json /code/
COPY yarn.lock /code/

RUN yarn install

COPY . /code/

RUN yarn build

EXPOSE 3000
