# for naming .dokcerfile extension is not necessory it given so that vscode detect it as a docker file and provide auto-completion
FROM php:8.2.4-fpm-alpine

# standard folders for web servers to serve website
WORKDIR /var/www/html

# php extensions
# if no entry point is given then the image will take it default entry point to execute the RUN command which invokes the php interpreter
RUN docker-php-ext-install pdo pdo_mysql
 
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel