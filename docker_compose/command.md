## docker-compose
> helps the multi containerisartion of apps easier<br>
> a tool that replace build and run commands with one configuration file<br>
> not replace Dockerfile<br> 
> does not replace images or containers<br>
> not suitable for  managing diiferent containers on different hosts(machines)<br>
> when you down using compose file container will be automaticaly removed. <br>
> --rm and -d configurations are not required to be added to the compose file<br>
> all services on the listed under docker compose file run on the same network.hence no need to specify.<br>
> relative path can be given in the bind mount no need for the extra large absolute path. <br>
> docker-compose up -d start the containers in detach mode. <br>
> docker-compose down to delete the container and network. <br>
> docker-compose down -v to remove volumes. <br>
> for force building and start service<br>
> docker-compose up --build<br>
> for force building<br>
> docker-compose build<br>

## contents
> * Services(containers)
> * published ports
> * Environment Variables
> * Volumes
> * Networks