#!/bin/ash

set -e

if [ -z "$@" ]; then
  /usr/bin/supervisord -c /etc/supervisord.conf --nodaemon
else
  $@
fi
