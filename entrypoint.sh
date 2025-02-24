#!/usr/bin/env bash

#   export HAPROXY_CFG=""

if [ ! -z "$HAPROXY_CFG" ] ; then
    echo "#"
    echo "# Use only HAPROXY_CFG, ignored all other variables!"
    echo "#"
    echo "$HAPROXY_CFG" > /haproxy.cfg
    exec "$@"
fi

exec "$@"
