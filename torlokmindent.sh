#!/bin/bash

for d in *;
do
  if [[ -f ${d} ]];
  then
    if [[ ${d} == *.gz ]];
    then
      rm -rf $d
    fi
  fi
done
