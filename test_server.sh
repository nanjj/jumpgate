#!/bin/sh
JUMPGATE_CONFIG=etc/jumpgate.conf gunicorn "jumpgate.wsgi:make_api()" --bind="10.114.252.140:5000" --timeout=600 --access-logfile="-" -w 4 $@;
