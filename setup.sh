#!/bin/bash

MYSQL=`which mysql`

Q1="CREATE DATABASE IF NOT EXISTS intelsecurity;"
Q2="GRANT USAGE ON *.* TO foo@localhost IDENTIFIED BY 'password';"
Q3="GRANT ALL PRIVILEGES ON intelsecurity.* TO foo@localhost;"
Q4="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}${Q4}"
  
$MYSQL -uroot -p -e "$SQL"
