> by default the container can connect to the outside world without any additional setup.<br>
> host.docker.internal can be used instead of the localhost to get ip address of the host machine.(eg: 'mongodb://host.docker.internal:27017/swfavorites')<br>
> to spin up a new mongodb use:<br>
> docker run -d mongo <br>
> docker ip address can be found from the docker container inspect command which can be used to contact the container. <br>

## **docker network**
> --network command helps the container to communicate each other<br>
> to connect to contaier use: <br>
> docker run -d --name containerName --network dockerNetworkName mongo<br>
> network will not create a network automatically for us like volumes.<br>
> to create a network use:<br>
> docker network create fav_net<br>
> this is a internal network
> to view the docker network use docker network ls<br> 
> once a network is created any other container can also be part of the docker network.<br>
> no need for -p option for contaienrs like mongodb since they will only connecting between the containers and not between local machine and container.<br>
> container to container connection does not require a port publishing.<br>
> the docker does not replace the source to resolve the ip address. Instead when a request leaves a container the docker is aware of that and it resolves accordingly.<br>