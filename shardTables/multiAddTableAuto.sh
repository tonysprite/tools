#!/bin/bash
#分库分表快速建表生成sql
#exampl:
#sh multiAddTableAuto.sh example_database tablename ./tableFormat.sh >./example_table.sql
#database $1
#tablename $2
#tableFilePath $3


for i in `seq 0 9`
do
	echo "use "$1$i";"
	for j in `seq 0 9`
	do
		sh $3 $1$i $j $2
	done
done
