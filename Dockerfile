FROM node:alpine

COPY . /app
WORKDIR /app

RUN yarn install

ENV NODE_ENV=production
RUN yarn build

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["yarn", "start"]
