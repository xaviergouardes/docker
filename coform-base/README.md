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

```

Step 11 : RUN ps && bash --version && ls -l /bin/sh && ls -l /bin/dash
 ---> Running in b3953f41a1ac
  PID TTY          TIME CMD
    1 ?        00:00:00 sh
    9 ?        00:00:00 ps
GNU bash, version 4.3.11(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2013 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
lrwxrwxrwx. 1 root root 4 Feb 19  2014 /bin/sh -> dash
-rwxr-xr-x. 1 root root 121272 Feb 19  2014 /bin/dash

```



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
