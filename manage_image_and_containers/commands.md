## **how to spin up existing container instead of creating a new one**
> docker start containerId<br>
> starts container in the detached mode by default<br>
> to start in attach mode again pass -a flag
> docker start -a containerId<br>
> docker run spin up  a new container every time when it is executed<br>
> docker start on the other hand resuse existing container<br>
> -p flag cannot be given to docker run since the run command start the existing container with the ports which it was run earlier