#!/bin/bash
while true;
do
  if $DEBUG -eq "true";
  then
    cat /tmp/haproxy.log | tee -a /var/log/haproxy/access.log
  else 
    cat /tmp/haproxy.log | tee -a /var/log/haproxy/access.log 2>&1 > /dev/null
  fi
  sleep $SLEEP
done
