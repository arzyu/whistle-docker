FROM node:lts-alpine

WORKDIR /downloads

RUN npm install -g whistle

ARG port=8899

EXPOSE ${port}

CMD [ "whistle", "run", "--port", "${port}" ]
