#!/bin/sh
while true; do  curl  -s -o /dev/null -X POST $dest_curl -w "%{http_code}_%{time_connect}\n"; sleep 2; done
