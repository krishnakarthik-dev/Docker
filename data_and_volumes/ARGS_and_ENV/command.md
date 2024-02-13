## **ENVs**
> $ sign should be added before env variables<br>
> to overide the default variable in the docker file use --env flag<br>
> docker run -d -p 3000:9000 --env PORT=9000 imageId<br>
> we can also use -e instead of --env flag<br>
> docker run -d -p 3000:9000 -e PORT=9000<br>
> we can also specify certain files to store env variables.<br>
> commonly these are named as env files.<br>
> use --env-file flag to point env variables to a file<br>
> docker run -d -p 3000:9000 --env-file ./.env imageId<br>

## **ARGs**
> $ sign should be added before ARGUMENTS<br>
> arguments come in handy while building the image<br>
> docker build -t imageName --build-arg DEFAULT_PORT=8000 . <br>
we can use to build-arg for creating two images with same code but different argument values (eg: PORT)<br>