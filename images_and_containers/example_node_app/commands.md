## **To build a custom image specified in the docker file**
> docker build .
> image is a template of the container<br>
> container is the running application

## **To run docker container with acess to a certain port**
> docker run -p 3000:80 imageId<br>
> -p stands for publish<br>
> 3000 is the external port<br>
> 80 is the internal port<br>

## **Image has to be rebuild after chnages in the source code**
> docker build .<br>
> when images is build the docker caches the image layer<br>
> if the there is no change in the source file or configuration the docker pulls the cache to build faster. It build images as layers.<br>
> docker uses layer based architecture<br>
> when one layer is changed all the subsequent layers are also rebuild.<br>