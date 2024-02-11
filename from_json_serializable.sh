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
	perl -pi'*.orig' -e "s/json/pgsql/g;" -e "s/Json/PgSql/g;" -e "s/JSON/PgSQL/g;" $file
	perl -pi -e "s/pgsql.decode/json.decode/g;" -e "s/pgsql.encode/json.encode/g;" $file
	perl -pi -e "s/PgSqlDecode/JsonDecode/g;" -e "s/PgSqlEncode/JsonEncode/g;" $file
	perl -pi -e "s/pgsqlDecode/jsonDecode/g;" -e "s/pgsqlEncode/jsonEncode/g;" $file
	perl -pi -e "s/PgSqlUnsupportedObjectError/JsonUnsupportedObjectError/g;" $file
	perl -pi -e "s|github.com/google/github.com/anycode|g;" $file
done
