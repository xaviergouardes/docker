FROM centos:6
MAINTAINER Xavier Gouardes <xavier.gouardes@laposte.net>

LABEL name="OpenLdap RCVL" \
    vendor="RCVL" \
    license="GPLv2" \
    build-date="2016-03-02"

# Volumes for systemd
# VOLUME ["/run", "/tmp"]

# Environment for systemd
# ENV container=docker

# For systemd usage this changes to /usr/sbin/init
# Keeping it as /bin/bash for compatability with previous

RUN yum -y install openldap openldap-clients openldap-servers rsyslog

RUN chkconfig rsyslog on
RUN chkconfig slapd on

RUN cd /etc/rsyslog.d && echo "local4.*                        /var/log/ldap.log" > slapd.conf 

RUN service rsyslog start
RUN service slapd start

COPY olcDatabase={1}monitor.ldif /etc/openldap/slapd.d/cn=config
COPY olcDatabase={2}bdb.ldif /etc/openldap/slapd.d/cn=config
COPY init-ldap.ldif /tmp

RUN chown -R ldap:ldap /etc/openldap

RUN service slapd restart

#RUN ldapadd -v -x -f /tmp/init-ldap.ldif -D "cn=ldap-manager,dc=ma-region,dc=fr" -w toto

CMD ["/bin/bash"]

