# base image
FROM node:10.16.0-alpine

# create app directory and use it as the working directory
RUN mkdir -p /app/docker-demo-client
WORKDIR /app/docker-demo-client

# install and cache app dependencies
COPY package.json /app/docker-demo-client
COPY yarn.lock /app/docker-demo-client
RUN yarn

# copy all files to the working directory
COPY . /app/docker-demo-client

# start app
CMD ["yarn", "start"]
