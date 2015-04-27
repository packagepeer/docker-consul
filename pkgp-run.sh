#!/bin/bash

sed -i "s/%%%GOSSIP_KEY%%%/${GOSSIP_KEY}/g" /config/encrypt.json

exec /bin/start $@
