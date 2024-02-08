## **To remove a docker container**
> docker rm containeeId<br>
> use -f flag to force delete<br>
> cannot delete a running container<br>

## **To delete the docker images**
> docker rmi imageId<br>
> use -f flag to force delete<br>
> we cannot remove a image even if it is used by a container(running and stopped)<br>

## **To delete unused conatainer over a period of time**
> docker image prune
> use this with caution as it deletes all the images

## **To automatically remove the container when exists**
> docker run -p 3000:80 --rm imageId