#!/bin/sh

echo "Running on http://$(hostname -i)"

exec nginx -g "daemon off;"
