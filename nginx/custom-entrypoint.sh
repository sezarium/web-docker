#!/bin/bash
/docker-entrypoint.sh nginx -g "daemon off;"
tail -f /dev/null
