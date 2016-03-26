# Jenkins avec Docker #

## Description ##
Permet d'instancier Jenkins avec un container docker-in-docker afin de lancer des build dans un container docker

## Commandes docker ##
	$ docker-compose up
	$ docker-compose stop

Plus toutes les autres commandes docker-compose

## Ressoures internet :##
	https://hub.docker.com/_/docker/
	https://hub.docker.com/_/jenkins/

## Autre solution : sans docker-compose ##
	$ docker create -v /var/jenkins_home -v /tmp --name jenkins_data_home busybox /bin/true
	$ docker run --privileged --volumes-from jenkins_data_home --name docker-engine-for-jenkins -d docker:1.10-dind
	$ docker run -p 8080:8080 -p 50000:50000 -u root --link docker-engine-for-jenkins:docker-engine-for-jenkins --volumes-from jenkins_data_home --name jenkins-test jenkins

## Paramétrage pour docker dans jenkins : ##
1 - Faire un installeur pour le client docker dans le paramétrage de jenkins
2 - dans le job indiquer l'uri de l'engine docker : tcp://docker-engine-for-jenkins:2375

Plugin : Cloudbee "CloudBees Docker Custom Build Environment Plugin"

