#!/bin/sh
cmd="hping3 -c 1"
from_host="192.168.0.75"
to_host="127.0.0.1"

$cmd -a $from_host -p 80 -s 27557 -S $to_host
$cmd -a $from_host -p 80 -s 27557 -SA $to_host
$cmd -a $from_host -p 80 -s 27557 -A $to_host
$cmd -a $from_host -p 80 -s 27557 -P $to_host
$cmd -a $from_host -p 80 -s 27557 -FA $to_host
$cmd -a $from_host -p 80 -s 27557 -RA $to_host

$cmd -a $from_host -s 80 -p 27557 -S $to_host
$cmd -a $from_host -s 80 -p 27557 -SA $to_host
$cmd -a $from_host -s 80 -p 27557 -A $to_host
$cmd -a $from_host -s 80 -p 27557 -P $to_host
$cmd -a $from_host -s 80 -p 27557 -FA $to_host
$cmd -a $from_host -s 80 -p 27557 -RA $to_host

$cmd -a $from_host -p 443 -s 27557 -S $to_host
$cmd -a $from_host -p 443 -s 27557 -SA $to_host
$cmd -a $from_host -p 443 -s 27557 -A $to_host
$cmd -a $from_host -p 443 -s 27557 -P $to_host
$cmd -a $from_host -p 443 -s 27557 -FA $to_host
$cmd -a $from_host -p 443 -s 27557 -RA $to_host

$cmd -a $from_host -s 443 -p 27557 -S $to_host
$cmd -a $from_host -s 443 -p 27557 -SA $to_host
$cmd -a $from_host -s 443 -p 27557 -A $to_host
$cmd -a $from_host -s 443 -p 27557 -P $to_host
$cmd -a $from_host -s 443 -p 27557 -FA $to_host
$cmd -a $from_host -s 443 -p 27557 -RA $to_host

$cmd -a $from_host -p 80 -s 27557 -2 $to_host
$cmd -a $from_host -s 80 -p 27557 -2 $to_host

$cmd -a $from_host -p 443 -s 27557 -2 $to_host
$cmd -a $from_host -s 443 -p 27557 -2 $to_host