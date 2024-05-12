#!/bin/bash

for ip in `cat lista-ip-sw-hw.txt | sort -n |  uniq`; 
do
        ./conf-ldp.sh $1 $2 $ip

done


