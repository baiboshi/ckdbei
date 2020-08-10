#!/bin/bash
IP=127.0.0.1
PASSWORD=ailab
USER=writer
PORT=9000
DATABASES=PCI
clickhouse-client -h $IP --port $PORT -d $DATABASES -q "drop database $DATABASES"
clickhouse-client -h $IP --port $PORT -d $DATABASES -q "show tables"
