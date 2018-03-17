#!/bin/sh

set -e

until /usr/bin/curl -o /dev/null --fail -s $1; do
  >&2 echo "$1 unavailable - sleeping"
  sleep 1
done

>&2 echo "$1 is up!"

exit 0
