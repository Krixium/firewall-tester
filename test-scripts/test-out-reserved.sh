#!/bin/sh
cmd="hping3 -c 1"
from_host="127.0.0.1"
to_host="192.168.0.75"

for port_num in {0..1023}
do
    $cmd -a $from_host -s $port_num -p 0 -S $to_host
    $cmd -a $from_host -s $port_num -p 0 -SA $to_host
    $cmd -a $from_host -s $port_num -p 0 -A $to_host
    $cmd -a $from_host -s $port_num -p 0 -P $to_host
    $cmd -a $from_host -s $port_num -p 0 -FA $to_host
    $cmd -a $from_host -s $port_num -p 0 -RA $to_host

    $cmd -a $from_host -s $port_num -p 0 -2 $to_host
done