## **To run in detached mode**
> docker run -p 3000:80 -d containerId<br>
> -d stands for detach, 3000 is external port and 80 is the internal port<br>
> benifit of this is that we can do other thing in the same terminal<br>
> docker start default mode is detached mode<br>

## **To go to attach mode from detach**
> docker attach containerId<br>

## **To view the logs from a container**
> docker logs containerId<br>
> if we pass -f flag for example docker logs -f containerId it will keeps on litsening for the future logs<br>