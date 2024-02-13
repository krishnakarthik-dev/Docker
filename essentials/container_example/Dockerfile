#base Image
FROM node:14

WORKDIR /app 

COPY package.json .

#intall dependencies
RUN npm install 

#copy rest of the code
COPY . . 

#expose port 3000 to outside
EXPOSE 3000

#code execution
CMD ["node", "app.mjs"]