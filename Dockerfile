FROM node:16
# Installing libvips-dev for sharp compatability
#RUN apt-get -y update && apt-get -y install libvips-dev
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /opt/app
COPY ./package.json ./
COPY ./yarn.lock ./
ENV PATH /opt/app/node_modules/.bin:$PATH
RUN yarn config set network-timeout 600000 -g
RUN yarn install
COPY ./ .
RUN yarn build
EXPOSE 1337
CMD ["yarn", "develop"]
