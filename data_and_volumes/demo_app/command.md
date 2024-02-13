> contents saved to the container will not be available to the outside world because the container is isolated.<br>
> no connection between the contaier and local file system<br>
> if the container is deleted the data is also deleted.<br>
> image has it own internal file system.<br>
> stopping the container does not deletes the data but deleting the container will do.<br>
> to persist the data even if the container is delted we can use the help of a docker feature called volumes.

## **Volumes**
> volumes are folders on the host container which made aware to the docker and they are mapped to the folders inside the docker containers.<br>
> COPY command takes one time snapshot of the directory and no on-going conncections.<br>
> changes in either folder(host folder or folder inside the container) will reflect each other.<br>
> containers can read to and from the volume.<br>
> to list all the container volumes use docker volume ls<br>

## **Two Types of external Data Storages**
> * Volumes (Docker managed)<br>
> * Bind Mounts (managed by user)<br>

## **Two Types of Volumes**
> * Anonymous Volume
> only persist untill the container is up an running.<br>
> cannot be reused since has no name.<br>
> * Named Volumes
> named volumes can be added by using -v flag
> general not tied to another contaier

## **Removing Anonymous Volumes**
> run a container with the --rm option.<br>
> we can clear of unused anonymous volumes - them via docker volume rm VOL_NAME or docker volume prune.<br>

## **Persist data using named volumes**
> docker run -p 3000:80 -v vol_name:/path/to/folder imageId<br>

## **Bind Mounts**
> not ties to specific container.<br>
> User defined the path/folder on the local machine.<br>
> for persistance and editable data.<br>
> there is no need to rebuilding the image.<br>
> docker should have acess to the folder which we are setting as a bind mount.<br>

## **to add volumes**
> docker run -v absolute path of root directory:/path/to/folder imageId for bind mounts<br>
> docker run -v volume name:/path/to/folder imageId for named volumes<br>
> docker run -v /path/to/folder imageId for anonymous volumes<br>
> using the bind mount we can reflect instant changes of our code<br>
> sometimes restarting the server inside the container is required to reflect the changes of the source while runnimg. use stoping and then start the container instead of spinning a new container from the image.<br>

## **combing and merging volumes**
> volumes and bind mount are mounted into the container with the help of -v flag.<br>
> the commands on the docker file can be overidden by the commands given while starting a container. <br>
> to exclude from be overidden we can use anonymous volumes<br>
> longer the path will always win in persisting<br>

## **Read only bind mount**
> we need to make sure the container has read only permissiom we don't want the container to make changes in our source code only user should able to change the code.<br>
> by default they have read write permission<br>
> we can make them read only by running: <br>
>> docker run -v absolute path of root directory:/path/to/folder:ro imageId<br>
> ro stands for the read-only.<br>
> usually a good practise to follow. <br> 
> we can make exception by adding a specific sub volume which overwrites the main volume like anonymous volume<br>

## **Managing volumes**
> for listing the docker volumes use: <br>
> docker volume ls<br>
> bind mount dosent show up in the volume ls command since it is not docker managed.<br>

## **create a docker volume**
> docker volume create volumeName<br>
> this will be listed under docker volume ls<br>

## **to ispect a docker volume**
> docker volume inspect volumeName<br>
> Mountpoint is the path where a container is stored but it cannot be found since it is inside a docker virtual machine setup(not actual path).<br>

## **to remove a docker volume**
> docker volume rm volumeName<br>
> cannot remove volume that are being used by active containers<br>
> docker volume prune to remove all the unwanted volumes<br>

## **COPY vs BIND MOUNT**
> COPY command takes a snapshot and paste it inside the container.<br>
> we can skip the COPY command if we are attaching a bind mount.<br>
> bind mount are only used in development stage we do not provide it while deploying so  COPY commands are non-skippable.<br>
> production only require a snapshot<br>

## **dockerignore**
> add this file to specify which all files should be excluded while using COPY command.(eg: node modules)<br>
