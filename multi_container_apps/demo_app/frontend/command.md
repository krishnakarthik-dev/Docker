> browser has no idea about the named container<br>
> publish the port of the fornt end container because request from the browser is considered as external.<br>
> for react the run inside the browser not in the container. only dev server is only available in the container.<br> 
> sice the browser do not understand the container name we have to used localhost.<br>
> which in turn requires to publish the backend port. <br>
> backend and database should be under same network so the backend and database can communicate each other but react frontend doesn't need it since code runs inside the browser.<br>
> by default the database data is stored inside data/db to persist that data we need volume<br>
> docker run --name mongoDB -d -v data:/data/db  --network my_network mongo <br>
> MongoDB authentication<br>
> to set password and username to the mongoDB set variables -e MONGO_INITDB_ROOT_USERNAME, MONGO_INITDB_ROOT_PASSWORD<br>
> to perist logs uased named volumes for the backend container<br>
> docker run --name containerName -d -p 80:80 -v "DockerDocs/multi_container_apps/demo_app/backend:/app" -v logs:/app/logs -v /app/node_modules --network networkName imageName<br>
