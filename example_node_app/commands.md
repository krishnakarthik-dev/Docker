## **To build a custom image specified in the docker file**
> docker build .

## **To run docker container with acess to a certain port**
> docker run -p 3000:80 containerId<br>
> -p stands for publish<br>
> 3000 is the external port<br>
> 80 is the internal port<br>