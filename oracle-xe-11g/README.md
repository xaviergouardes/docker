# oracle11 XE #

## Description ##
	https://hub.docker.com/r/alexeiled/docker-oracle-xe-11g/

## Commandes docker ##
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

