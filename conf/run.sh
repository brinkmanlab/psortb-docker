#!/bin/bash

# Start up supervisor
/usr/bin/supervisord -n -c /etc/supervisor/conf.d/supervisord.conf
