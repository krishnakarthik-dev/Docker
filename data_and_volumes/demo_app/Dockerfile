FROM node:12

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

# to persist data volume command is used
# commnented since we are using named values
# can also implemnt this command while using anonymous volumes
# VOLUME [ "/app/feedback" ]

# can be used on build time commands do not work on run time commands
ARG DEFAULT_PORT=80

# to set environment variables. PORT is an example. Default value
# another way of setting env variables usign args
# ENV PORT $DEFAULT_PORT 
ENV PORT 80

# $PORT is defined using env command from the previous step
EXPOSE $PORT

CMD [ "npm", "start" ];