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
- Faire un installeur pour le client docker dans le paramétrage de jenkins
- dans le job indiquer l'uri de l'engine docker : tcp://docker-engine-for-jenkins:2375

Plugin : Cloudbee "CloudBees Docker Custom Build Environment Plugin"

## Test avec Coform ##
Faire un job de build, qui copie les fichiers du /tmp dans son workspace. Ce job simule la phase de build.

Faire un job de déploye qui :
- 1 - partage le workspace du premier
	Options avancées du projet > Utiliser un répertoire de travail spécifique > Répertoire = /var/jenkins_home/jobs/coform-build/workspace
- 2 - Se build dans docker à partir d'une image wnameless/oracle-xe-11g
	Build inside a Docker container > Pull docker image from repository > image id/tag = wnameless/oracle-xe-11g
					> Docker Host URI = tcp://docker-engine-for-jenkins:2375
- 3 - Faire un step de build sh avec les paramétres ci-desous

```
ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe; export ORACLE_HOME;
PATH=$ORACLE_HOME/bin:$PATH; export PATH;
ORACLE_SID=XE; export ORACLE_SID;

/usr/sbin/startup.sh;

export DATABASE_SID_COFORM=XE;
export DATABASE_USER_COFORM=COFORM;
export DATABASE_PASSWORD_COFORM=COFORM;

cd /; cp -R ${WORKSPACE}/coform-base-05.05.00 /;
mkdir -p /home/coform;
chmod 777 /home/coform;

sqlplus system/oracle@localhost/XE @/coform-base-05.05.00/utils/prerequis/01_tablespaces.sql;
sqlplus system/oracle@localhost/XE @/coform-base-05.05.00/utils/prerequis/02_user.sql;
/coform-base-05.05.00/01.00.02_complet/lanceur_RMP.sh;

```
