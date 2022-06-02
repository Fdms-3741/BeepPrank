#!/bin/bash

BEEP=/opt/.beep/dabeep/bhc.sh
SECRET_CODE="GET BEEPED"

while true; do
    RECEIVED_CODE=$(nc -lnp 33547)
    if [[ ${RECEIVED_CODE:0:${#SECRET_CODE}} == $SECRET_CODE ]]; then
	break
    fi
done

$BEEP
