FROM wnameless/oracle-xe-11g:latest
MAINTAINER Xavier Gouardes <xavier.gouardes@laposte.net>

LABEL name="Coform Base" \
    vendor="xtechnologies" \
    license="GPLv2" \
    build-date="2016-04-03"

ADD coform-base-05.05.00 /tmp/coform-base-05.05.00

ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe 
ENV PATH=$ORACLE_HOME/bin:$PATH 
ENV ORACLE_SID=XE

ENV DATABASE_SID_COFORM=XE
ENV DATABASE_USER_COFORM=COFORM
ENV DATABASE_PASSWORD_COFORM=COFORM

RUN	ps && bash --version && ls -l /bin/sh && ls -l /bin/dash

RUN 	/usr/sbin/startup.sh && \
	sqlplus system/oracle@localhost/XE @/tmp/coform-base-05.05.00/utils/prerequis/01_tablespaces.sql && \
	sqlplus system/oracle@localhost/XE @/tmp/coform-base-05.05.00/utils/prerequis/02_user.sql && \
	/tmp/coform-base-05.05.00/lanceurCumulatif_RMP.sh

