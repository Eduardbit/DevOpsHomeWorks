#!/bin/bash
#touch /tmp/$(date +%d%m%y).log
for ((i=1;i<100;i++))
do
  echo $RANDOM>>/tmp/$(date +%d%m%y).log
done
