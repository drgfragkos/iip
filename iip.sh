#!/bin/bash
## iip.sh - Internal IP
## Return the LAN IP address if no interface is specified 
## OR return the LAN IP address of a specific interface, 
## if the interface is given (wlan0, eth0, ect.)
## 
## You may modify, reuse and distribute the code freely as long as it is referenced back ##
## to the author using the following line: ..based on iip.sh by @drgfragkos            ##
##
## Usage: ./iip.sh [Interface] 
##    [Interface]     Optional parameter. e.g. [wlan|eth0|eth1|...]
##
## 

interface=$1
ifconfig $1 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'



