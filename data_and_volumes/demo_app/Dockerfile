FROM node:12

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

# to persist data volume command is used
# commnented since we are using named values
# can also implemnt this command while using anonymous volumes
# VOLUME [ "/app/feedback" ]

EXPOSE 80

CMD [ "node", "server.js" ];