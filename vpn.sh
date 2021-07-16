#!/bin/bash
scripts='/home/bridge/vpn'
ls -1 $scripts | nl
count=$(ls -1 $scripts | nl | tail -n 1 | cut -b 6)
let max=$count+1
echo "Select VPN by Number"
read select
if [[ $select != [0-999999999] ]]
then
	echo "only positive numeric inputs are allowed"
elif [ $select -gt 0 -a $select -lt $max ]
then
	echo "Starting vpn..."
	vpn=$(ls -1 $scripts | nl | grep -w $select | cut -f 2)
	sudo openvpn $scripts/$vpn
else
	echo "Invalid input"
fi
