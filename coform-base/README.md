# COFORM BASE #
## Description ##
Image permettant de tester l'installation successives de plusieurs version de la abse COFORM

## Builder l'image ##


## Lancer un container ##
	$ 

## Notes de construction ##
	$ docker run -d -it -v /var/dockerdisk/:/var/dockerdisk --name coform-base wnameless/oracle-xe-11g
	$ docker exec -it coform-base bash
 
	$ SLQPLUS
	set pagesize 0;
	set linesize 4000;
	set linesize 15000;

	$ docker build -t coform-docker .

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



============================
docker-oracle-xe-11g
============================

Oracle Express Edition 11g Release 2 on Ubuntu 14.04.1 LTS

This **Dockerfile** is a [trusted build](https://registry.hub.docker.com/u/wnameless/oracle-xe-11g/) of [Docker Registry](https://registry.hub.docker.com/).

### Installation
```
docker pull wnameless/oracle-xe-11g
```

Run with 22 and 1521 ports opened:
```
docker run -d -p 49160:22 -p 49161:1521 wnameless/oracle-xe-11g
```

Connect database with following setting:
```
hostname: localhost
port: 49161
sid: xe
username: system
password: oracle
```
Connected to apex api
```
	$url: http://localhost:49162/apex
	$workspace: INTERNAL
	$user: ADMIN
	$password: oracle
```

Password for SYS & SYSTEM
```
oracle
```

Login by SSH
```
ssh root@localhost -p 49160
password: admin
```
