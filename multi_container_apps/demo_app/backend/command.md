> build backend docker image<br>
> docker build -t node_app . <br>
> run docker container under the network fav_net. <br>
> docker run -p 3000:80 -d --name node_container --network fav_net node_app<br>