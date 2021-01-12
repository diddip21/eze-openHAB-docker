#!/bin/bash

if [ ! -z ${WALLET_ADDRESS} ] &&  [ ! -z ${POOL_ADDRESS} ] ; then 
echo "Start renim"
	./cpuminer -a cryptonight -o $POOL_ADDRESS -u $WALLET_ADDRESS #-t 2 -T 60
else echo "${WALLET_ADDRESS} and ${POOL_ADDRESS}";
fi
