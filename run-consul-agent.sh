#!/bin/sh
# usage: run-consul-agent.sh <bind ip> <consul server>

consul agent \
    -bind=$1 \
    -advertise=$1 \
    -data-dir=/data \
    -config-dir=/config \
    -log-level=info \
    -rejoin \
    -retry-join=$2 \
    -retry-max=10 \
    -retry-interval=10s
