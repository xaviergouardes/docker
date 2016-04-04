FROM wnameless/oracle-xe-11g:latest
MAINTAINER Xavier Gouardes <xavier.gouardes@laposte.net>

LABEL name="Coform Base" \
    vendor="xtechnologies" \
    license="GPLv2" \
    build-date="2016-04-03"

ADD industrialisation-docker /tmp/industrialisation-docker

ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe 
ENV PATH=$ORACLE_HOME/bin:$PATH 
ENV ORACLE_SID=XE

RUN 	/usr/sbin/startup.sh && \
	sqlplus system/oracle@localhost/XE @/tmp/industrialisation-docker/coformdb.sql

# RUN sqlplus --help

CMD /tmp/industrialisation-docker/deploy-coform-db.sh

# RUN ln -snf /bin/bash /bin/sh

# CMD /usr/sbin/startup.sh && /tmp/industrialisation-docker/deploy-coform-db.sh


# RUN source /etc/bash.bashrc 
# RUN /bin/bash -c 'echo ${PATH}' 
# RUN /tmp/industrialisation-docker/setup.sh

# RUN source /etc/bash.bashrc && echo ${PATH} && sqlplus --help

# RUN echo ${PATH}
# RUN sqlplus --help

