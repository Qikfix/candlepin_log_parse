#!/bin/bash

if [ "$1" == "" ]; then
  echo "Please, call $0 <path to candlepin.log>"
  exit 1
fi

FILE=$1

LOG="/tmp/candlepin_parsed.log"
>$LOG

echo "Welcome" | tee -a $LOG
echo "Please type CTRL+F and search for '##'. This will switch you directly to the section (200, 401, 400, etc)." | tee -a $LOG
echo | tee -a $LOG

first_time=$(head -n1 $FILE  | awk '{print $1, $2}')
last_time=$(tail -n1 $FILE  | awk '{print $1, $2}')

echo "First Time ...: $first_time" | tee -a $LOG
echo "Last Time ....: $last_time" | tee -a $LOG

echo | tee -a $LOG

grep -E -o "status=[0-9]{3}" $FILE  | sort | uniq -c | sort -nr	| tee -a $LOG
echo | tee -a $LOG

# Removing 200 once we would like to check tasks that are failing.
code=$(grep -E -o "status=[0-9]{3}" $FILE  | sort | uniq -c | sort -nr | cut -d= -f2 | grep -v 200)

for b in $code
do
  echo "## $b"		| tee -a $LOG
  echo			| tee -a $LOG
  for x in $b
  do
    req=$(grep status=$x $FILE | grep -Eo 'req=.*' | awk '{print $1}' | sed -e 's/,//g' | sed -e 's/req=//g')
    for y in $req
    do
      echo -- $y	| tee -a $LOG
      grep $y $FILE	| tee -a $LOG
      echo		| tee -a $LOG
      echo		| tee -a $LOG
    done
  done
done
