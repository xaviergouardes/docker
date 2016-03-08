#!/bin/bash

service rsyslog start &
service slapd start &
service httpd start &

exec "$@"
