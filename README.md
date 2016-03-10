# docker #

## Introduction ##

Cette image docker contient une installation d'openldap et de l'application phpldapadmin. La strucutre est à l'image de RCVL

## Pour lancer un container ##

`$ docker run -d -it -v /var/dockerdisk/:/var/dockerdisk --privileged -p 80:80 -p 389:389 open-ldap-region`
