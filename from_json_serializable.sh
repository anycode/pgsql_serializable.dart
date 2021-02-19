#!/bin/bash

mv json_serializable pgsql_serializable
mv json_annotation pgsql_annotation

find pgsql* exam* -name '*json*' | \
grep -v '\.json' | \
while read file
do
	mv $file $(echo $file | sed 's/json/pgsql/g')
done

find . -name '*.dart' -o -name '*.yaml' | \
while read file
do
	perl -pi'*.orig' -e "s/json/pgsql/g;" -e "s/Json/PgSql/g;" $file
done
