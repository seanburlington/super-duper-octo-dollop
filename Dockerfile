# https://forum.strapi.io/t/docker-strapi-node-18-16-alpine-sharp-node-gyp-problem-solved/32245
# node:18-alpine breaks node-gyp
FROM node:18.16-alpine
# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git


WORKDIR /opt/app

ENV PATH /opt/app/node_modules/.bin:$PATH

USER node

CMD ["yarn", "develop"]
