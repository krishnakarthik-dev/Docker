# building from base image
FROM node

# to overide the default working directory which helps in executing commands in the specified directory in this case /app
# set the working directory before coping the files
WORKDIR /app

# copy the package.json to the working directory of the container
COPY package.json /app

# run command inside the container
# by default all the commands will be executed in the working directory of the container
# by default the working directory is the root folder of the container
# the run command is placed before the copy commnad because we dont need to run the npm install every time we build the image unless there is a change in the package.json
RUN npm install

# copy all the files from the current directory of the Docker file and copy to the specified path of the container 
# all files excluding the docker file will be copied
# even though the working directory is set and everything works relative to it. It is best to specify the copy target location
COPY . /app

# docker has an internal network which is not exposed to outside
# expose the port 80 of the docker container which helps outside world to communicate with it
# for documentation(optional). even though recommended as a best practise
EXPOSE 80

# differnce between the RUN and CMD is that CMD commands does not run during the image building process
# CMD only runs when the container is spin from the image
# this should be last command in the docker file
CMD ["node", "server.js"]