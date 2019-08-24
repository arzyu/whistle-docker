FROM node:alpine

WORKDIR /downloads

RUN npm install -g whistle 2>&1

ARG port=8899

EXPOSE ${port}

CMD [ "whistle", "run", "--port", "${port}" ]
