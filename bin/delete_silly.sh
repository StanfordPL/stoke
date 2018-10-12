#!/bin/bash

while [ 1 ]; do
  date
  psql -d v1 -U postgres -h 127.0.0.1 -c "delete from proofobligationqueue where hash in (select distinct Q.hash from proofobligationresult as R, proofobligationqueue as Q where R.hash = Q.hash and error is null)"
  sleep 30
done
