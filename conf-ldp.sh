#!/usr/bin/expect
#
# Author: Luan Andrade
# Linkedin: https://www.linkedin.com/in/luan-william-vieira-de-andrade-5a8110197/
#



set usuario [lindex $argv 0];
set senha [lindex $argv 1];
set host [lindex $argv 2];
set timeout 15;

spawn ssh -o StrictHostKeyChecking=no $usuario@$host
expect -exact "password: "
set timeout 5;
send -- "$senha\r"
expect -exact "\*>"
send -- "sys\n"
expect -exact "\*]"
set timeout 10;
# Após "remote-peer" colocar o nome que deseja. Após "remote-ip" colocar o IP do equipamento que deseja adicionar a lista de ldp remote-peer dos switches HW
send -- "mpls ldp remote-peer sw-hw-sp2\r remote-ip 10.99.87.222\r q\r q\r q\r"
expect -exact"\*>"
send -- "quit\r y\r"
