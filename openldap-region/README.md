# openldap-region #
## Description ##
Cette image docker contient une installation d'openldap et de l'application phpldapadmin. La structure est à l'image de RCVL

## Builder l'image ##
Une fois le checkout fait , se positionner dans le répertoire contenant le `Dockerfile` et lancer la commande suivante
	$ docker build -t openldap-region .

## Lancer un container ##
	$ docker run -it -p 80:80 -p 389:389 -d xtechnologies/openldap-region

## Php Ldap Admin ##
login : cn=ldap-manager,dc=ma-region,dc=fr
pwd : toto
url : http://localhost:80/ldapadmin

utilisateur axyus / toto