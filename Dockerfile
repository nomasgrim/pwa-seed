FROM node:10.0.0

LABEL maintainer="xerik25@gmail.com"

WORKDIR /app

COPY package*.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 9000

CMD [ "yarn", "prod" ]
