# docker #

## Introduction ##

Repository permettant de capitaliser plusieurs container docker

## openldap-region ##
### Description ###
Cette image docker contient une installation d'openldap et de l'application phpldapadmin. La structure est à l'image de RCVL

### Builder l'image ###
Une fois le checkout fait , se positionner dans le répertoire contenant le `Dockerfile` et lancer la commande suivante
	`$ docker build -t openldap-region .`
### Lancer un container ###
	`$ docker run -d -it -v /var/dockerdisk/:/var/dockerdisk --privileged -p 80:80 -p 389:389 openldap-region`
