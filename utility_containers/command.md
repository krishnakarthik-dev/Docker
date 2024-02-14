## utility containers
> do not start an application<br>
> run enviornment with specific commnads provided by user<br>

## docker exec
> allows to execute certain commands inside the docker container<br>
> docker exec -it contaierName commands(eg: docker exec -it contaierName npm init)<br>
> docker run -it -v "DockerDocs/utility_containers":/app node_utility npm init<br>
> docker-compose run npm install<br>