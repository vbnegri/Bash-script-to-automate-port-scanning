#!/bin/bash

if [ "$1" == "" ]
then 
	echo "Modo de uso: $0 REDE PORTA"
	echo "Exemplo: %0 172.16.1 80"

else
for ip in {1..254}
do
hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA";
done
fi
