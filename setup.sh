#!/bin/bash
  
EXPECTED_ARGS=3
E_BADARGS=65
MYSQL=`which mysql`

Q1="CREATE DATABASE IF NOT EXISTS intelsecurity;"
Q2="GRANT USAGE ON *.* TO foo@localhost IDENTIFIED BY 'password';"
Q3="GRANT ALL PRIVILEGES ON intelsecurity.* TO foo@localhost;"
Q4="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}${Q4}"
  
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 dbname dbuser dbpass"
  exit $E_BADARGS
fi
  
$MYSQL -uroot -p -e "$SQL"