## **To build a docker image**
> docker build .
## **To run a docker image**
> docker run image_id
## **To run a docker image with port specified**
> docker run -p 3000:3000 imageId 
## **To list build images**
> docker images
## **To view active containers**
> docker ps
## **To stop a container**
> docker stop containerId
> docker kill --signal=SIGTERM  containerId
## **To delete a container**
> docker rm containerId
## **To delete a image**
> docker rmi imageId