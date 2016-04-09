# oracle11 XE #
Oracle Express Edition 11g Release 2 on Ubuntu 14.04.1 LTS
============================

## Description ##
	https://hub.docker.com/r/wnameless/oracle-xe-11g/

## Commandes docker ##
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

Password for SYS & SYSTEM
```
oracle
```

Login by SSH
```
ssh root@localhost -p 49160
password: admin
```

