FROM composer:2.5.7

# sets up a new group named laravel with the GID 1000, and then creates a new user named laravel, adds them to the laravel group, sets their initial login group to laravel, sets their login shell to /bin/sh, and creates them as a system user without a password. 
# addgroup -g 1000 laravel: This command adds a new group named laravel with the group ID (GID) of 1000. The -g flag specifies the GID for the group being created. This group might be used for managing permissions and access control within the Docker container.
# adduser -G laravel -g laravel -s /bin/sh -D laravel: This command adds a new user named laravel to the system.
# -G laravel: Specifies that the user laravel should be added to the laravel group.
# -g laravel: Specifies the initial login group for the user, which is also set to laravel.
# -s /bin/sh: Specifies the login shell for the user. In this case, it's set to /bin/sh.
# -D laravel: Creates a system user without a password and disables login by password for the user
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel
 
WORKDIR /var/www/html
 
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]