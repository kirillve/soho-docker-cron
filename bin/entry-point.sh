#!/bin/sh

set -uex

echo ${CUSTOM_CRONJOB} | base64 -d > /etc/cron.d/cronjob

/usr/sbin/cron -f -L 2
