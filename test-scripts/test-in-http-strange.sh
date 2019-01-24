#!/bin/sh
cmd="hping3 -c 1"
from_host="192.168.0.75"
to_host="127.0.0.1"

for port_num in {0..1023}
do
    $cmd -a $from_host -p 80 -s $port_num -S $to_host
    $cmd -a $from_host -p 80 -s $port_num -SA $to_host
    $cmd -a $from_host -p 80 -s $port_num -A $to_host
    $cmd -a $from_host -p 80 -s $port_num -P $to_host
    $cmd -a $from_host -p 80 -s $port_num -FA $to_host
    $cmd -a $from_host -p 80 -s $port_num -RA $to_host

    $cmd -a $from_host -p 443 -s $port_num -S $to_host
    $cmd -a $from_host -p 443 -s $port_num -SA $to_host
    $cmd -a $from_host -p 443 -s $port_num -A $to_host
    $cmd -a $from_host -p 443 -s $port_num -P $to_host
    $cmd -a $from_host -p 443 -s $port_num -FA $to_host
    $cmd -a $from_host -p 443 -s $port_num -RA $to_host

    $cmd -a $from_host -p 80 -s $port_num -2 $to_host

    $cmd -a $from_host -p 443 -s $port_num -2 $to_host
done