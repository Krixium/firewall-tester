#!/bin/sh
from_host=$1
to_host=$2

cmd="hping3 -c 1"

$cmd -a $from_host -p 27557 -s 0 -S $to_host
$cmd -a $from_host -p 27557 -s 0 -SA $to_host
$cmd -a $from_host -p 27557 -s 0 -A $to_host
$cmd -a $from_host -p 27557 -s 0 -P $to_host
$cmd -a $from_host -p 27557 -s 0 -FA $to_host
$cmd -a $from_host -p 27557 -s 0 -RA $to_host

$cmd -a $from_host -p 27557 -s 0 -2 $to_host