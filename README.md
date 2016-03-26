# docker #

## Introduction ##

Repository permettant de capitaliser plusieurs container docker

## openldap-region ##
### Description ###
Cette image docker contient une installation d'openldap et de l'application phpldapadmin. La structure est à l'image de RCVL

### Builder l'image ###
Une fois le checkout fait , se positionner dans le répertoire contenant le `Dockerfile` et lancer la commande suivante
	$ docker build -t openldap-region .

### Lancer un container ###
	$ docker run -d -it -v /var/dockerdisk/:/var/dockerdisk --privileged -p 80:80 -p 389:389 openldap-region

## oracle11 XE ##

### Description ###
	https://hub.docker.com/r/alexeiled/docker-oracle-xe-11g/

### Commandes docker ###
	$docker pull alexeiled/docker-oracle-xe-11g

	$docker run -d -p 1521:1521 -p 8080:8080 -v /var/dockerdisk:/tmp alexeiled/docker-oracle-xe-11g

	$hostname: localhost
	$port: 49161
	$sid: xe
	$username: system
	$password: oracle

	$url: http://localhost:49162/apex
	$workspace: INTERNAL
	$user: ADMIN
	$password: oracle

## Jenkins avec Docker ##

### Description ###
Permet d'instancier Jenkins avec un container docker-in-docker afin de lancer des build dans un container docker

### Commandes docker ###
	$ docker-compose up
	$ docker-compose stop

Plus toutes les autres commandes docker-compose

### Ressoures internet :###
https://hub.docker.com/_/docker/
https://hub.docker.com/_/jenkins/

### Autre solution : sans docker-compose ###
docker create -v /var/jenkins_home -v /tmp --name jenkins_data_home busybox /bin/true
docker run --privileged --volumes-from jenkins_data_home --name docker-engine-for-jenkins -d docker:1.10-dind
docker run -p 8080:8080 -p 50000:50000 -u root --link docker-engine-for-jenkins:docker-engine-for-jenkins --volumes-from jenkins_data_home --name jenkins-test jenkins

### Paramétrage pour docker dans jenkins : ###
1 - Faire un installeur pour le client docker dans le paramétrage de jenkins
2 - dans le job indiquer l'uri de l'engine docker : tcp://docker-engine-for-jenkins:2375

Plugin : Cloudbee "CloudBees Docker Custom Build Environment Plugin"

