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
 