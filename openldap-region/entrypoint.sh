#!/bin/bash

service rsyslog start &
service slapd start &
service httpd start &

tail -f /entrypoint.sh

exec "$@"
