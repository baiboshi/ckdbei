#!/bin/bash
ailab=`grep -nr ";" tables.log |wc -l`
for i in `seq 1 $ailab`
do
#显示出每行的内容
#cat abc.log | sed '/^$/d'|sed 's/;/;ailab/g'
tesd=`cat tables.log | sed '/^$/d'|sed 's/;/;-/g'|awk -F '-' BEGIN{RS=EOF}'{gsub(/\n/," ");print $0}'|cut -d '-' -f $i|sed 's/,/,\n/g'`
echo "$tesd"
done
