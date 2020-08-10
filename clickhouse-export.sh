#!/bin/bash
IP=10.0.32.94
PASSWORD=ailab
USER=writer
PORT=9001
DATABASES=PCI
clickhouse-client -u $USER --password $PASSWORD -h $IP --port $PORT -d $DATABASES --format_csv_delimiter="," -q "show tables" > export/tables.log
cklists=`grep -v "local" export/tables.log`
mkdir export
for i in $cklists;
do
clickhouse-client -u $USER --password $PASSWORD -h $IP --port $PORT -d $DATABASES --format_csv_delimiter="," -q "select * from $i FORMAT CSV " > export/$i.csv
echo $i
done

