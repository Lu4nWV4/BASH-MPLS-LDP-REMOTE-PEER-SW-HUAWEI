#!/bin/bash
#
# Author: Luan Andrade
# Linkedin: https://www.linkedin.com/in/luan-william-vieira-de-andrade-5a8110197/
#

for ip in `cat lista-ip-sw-hw.txt | sort -n |  uniq`; 
do
        ./conf-ldp.sh $1 $2 $ip

done


