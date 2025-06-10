#!/bin/bash

echo "1. merge upstream changes, copy upstream to temp branch, Enter to continue, CTRL-C to quit"
read x
git checkout upstream
git merge upstream/master
git checkout -b upstream2main upstream^0

echo "-------------------"
echo "2. move files from json_xxx to pgsql_xxx, Enter to continue, CTRL-C to quit"
read x
mkdir -p pgsql_serializable
cp -rf -t pgsql_serializable/ json_serializable/*
rm -rf json_serializable/
mkdir -p pgsql_annotation
cp -rf -t pgsql_annotation/ json_annotation/*
rm -rf json_annotation/

echo "-------------------"
echo "3. rename '*json*' files to '*pgsql*', Enter to continue, CTRL-C to quit"
read x
find pgsql* exam* -name '*json*' | \
grep -v '\.json' | \
while read file
do
	mv "$file" "${file//json/pgsql}"
done

echo "-------------------"
echo "4. replace 'json' to 'pgsql' in files, Enter to continue, CTRL-C to quit"
read x
find . -name '*.dart' -o -name '*.yaml' | \
while read file
do
	perl -pi'*.orig' -e "s/json/pgsql/g;" -e "s/Json/PgSql/g;" -e "s/JSON/PgSQL/g;" $file
	perl -pi -e "s/pgsql.decode/json.decode/g;" -e "s/pgsql.encode/json.encode/g;" $file
	perl -pi -e "s/PgSqlDecode/JsonDecode/g;" -e "s/PgSqlEncode/JsonEncode/g;" $file
	perl -pi -e "s/pgsqlDecode/jsonDecode/g;" -e "s/pgsqlEncode/jsonEncode/g;" $file
	perl -pi -e "s/JsonDecoded/PgSqlDecoded/g;" -e "s/JsonEncoded/PgSqlEncoded/g;" $file
	perl -pi -e "s/jsonDecoded/pgsqlDecoded/g;" -e "s/jsonEncoded/pgsqlEncoded/g;" $file
	perl -pi -e "s/PgSqlUnsupportedObjectError/JsonUnsupportedObjectError/g;" $file
	perl -pi -e "s|github.com/google|github.com/anycode|g;" $file
done

echo "-------------------"
echo "5. remove backup files, Enter to continue, CTRL-C to quit"
read x
find . -name '*.orig' -exec rm \{\} \;


echo "-------------------"
echo "TODO - 6. merge to main branch, delete temp branch, Enter to continue, CTRL-C to quit"
read x
echo "...TODO"

echo "Finished"
