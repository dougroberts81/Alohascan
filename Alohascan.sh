#! /bin/bash

# This script is designed to find systems in a given IP range with ports open

echo "Enter the starting IP address to scan...:"

read FIRSTIP

echo "Enter the last octet of the last IP :"

read lastOctetIP

echo "Enter the port number you want to use scan for :"

read port

nmap -sT $FIRSTIP-$LastOctetIP -p $port >/dev/null  -oG Alohascan

cat Alohascan | grep open > Alohascan2

cat Alohascan2
