#!/bin/sh

consul agent \
    -bind=$CONSUL_AGENT_BIND_ADDR \
    -advertise=$CONSUL_AGENT_BIND_ADDR \
    -data-dir=/data \
    -config-dir=/config \
    -log-level=info \
    -rejoin \
    -retry-join=$CONSUL_SERVER \
    -retry-max=10 \
    -retry-interval=10s
