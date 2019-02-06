#!/bin/bash

cure_date=$(date +%d%m%y)
scp eduardbit@10.166.0.2:/tmp/$cure_date.log /tmp/
cd /tmp/
tar -cvzf /tmp/$cure_date.tar.gz $cure_date.log
rm $cure_date.log
find /tmp/ -name "*.tar.gz" -mtime +7 -exec rm -f {} \;
