#!/bin/bash
#分库分表快速建表生成sql
#exampl:
#sh multiAddTableAuto.sh example_database ./tableFormat.sh >./example_table.sql
#database $1
#tableFilePath $2
#tablename $3

for i in `seq 0 9`
do
	echo "use "$1$i";"
	for j in `seq 0 9`
	do
		sh $2 $1$i $j $3
	done
done
