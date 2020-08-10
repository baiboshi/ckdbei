#!/bin/bash
<< EOF
The table to be created is written in the tables.sql file in the import directory
EOF
IP=pcidev-pci-clickhouse.baifendian.com
PASSWORD=ywcxailab
USER=ywcx
PORT=32108
DATABASES=PCI
#crate PCI databases
clickhouse-client -u $USER --password $PASSWORD -h $IP --port $PORT -q "create database $DATABASES"

#create import
#mkdir import 

#import database
ailab=`grep -nr ";" import/tables.sql |wc -l`
for i in `seq 1 $ailab`
do
#显示出每行的内容
table=`cat import/tables.sql | sed '/^$/d'|sed 's/;/;-/g'|awk -F '-' BEGIN{RS=EOF}'{gsub(/\n/," ");print $0}'|cut -d '-' -f $i|sed 's/,/,\n/g'`
clickhouse-client -u $USER --password $PASSWORD -h $IP --port $PORT -q "$table"
done

#list tables
clickhouse-client -u $USER --password $PASSWORD -h $IP --port $PORT -d $DATABASES -q "show tables"
#import databases
cklist=`ls export|grep "csv"|awk -F '.' '{print $1}'`
for j in $cklist;
do
clickhouse-client -u $USER --password $PASSWORD -h $IP --port $PORT --max_partitions_per_insert_block 10000 -d $DATABASES --format_csv_delimiter="," -q "insert into $j"_local" FORMAT CSV " < export/$j.csv
#echo $j
done
