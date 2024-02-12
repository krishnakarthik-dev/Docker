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
> *only persist untill the container is up an running. 
> * Named Volumes
> named volumes can be added by using -v flag

## **Removing Anonymous Volumes**
> run a container with the --rm option.<br>
> we can clear of unused anonymous volumes - them via docker volume rm VOL_NAME or docker volume prune.<br>

## **Persist data using named volumes**
> docker run -p 3000:80 -v vol_name:/path/to/folder imageId<br>

## **Bind Mounts**
> User defined the path/folder on the local machine.<br>
> for persistance and editable data.<br>
> docker should have acess to the folder which we are setting as a bind mount.<br>

## **to bind mount**
> docker run -v volume_name:(use absolute path)/path/to/folder imageId<br>
> using the bind mount we can reflect instant changes of our code<br>
> sometimes restarting the server inside the container is required to reflect the changes of the source while runnimg.<br>

## **combing and merging volumes**
> volumes and bind moutn are mounted into the container with the help of -v flag.<br>
> the commands on the docker file can be overidden by the commands given while starting a container. <br>
> to exclude from be overidden we can use anonymous volumes<br>
> longer the path will always win in persisting<br>
