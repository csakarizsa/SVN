#!/bin/bash
for d in *;
do
  if [[ -d ${d} ]];
  then
    tulajdonos=`stat -c '%U' $d`
    if [[ ${tulajdonos} == "apache" ]]
    then
      echo $tulajdonos $d
      svnadmin dump --deltas $d | gzip -c > $d".gz"
      echo $d "dumpolasa kesz"
    fi
  fi
done
