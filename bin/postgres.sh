#!/bin/bash
if [ -z "$1" ]
then
  psql -d v1 -U postgres -h 127.0.0.1
else
  psql -d v1 -U postgres -h 127.0.0.1 -f $1
fi
