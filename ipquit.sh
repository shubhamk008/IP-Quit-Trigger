#!/bin/bash

#________________________________________________________________
# ARGUMENTS:
# Argument 1: Byte 1,2 & 3 in decimal [0-255].[0-255].[0-255] 
# Argument 2: Byte 4 starting address in decimal [0-255]
# Argument 3: Byte 4 ending address in decimal [0-255]

#________________________________________________________________
# Variable Declarations:

ValidIPRegex = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"

#________________________________________________________________
# Pinging all IPs to check status
# File writing to: allping.txt


> allping.txt
for ((i=$2;i<=$3;i++))
do
fping -t 100 $1"."$i >> allping.txt &
#echo "Inspecting IP: " $1"."$i
done
wait

#_________________________________________________________________
# Retrieve only alive IPs
# File reading from: allping.txt, writing to: aliveping.txt


> aliveIPtemp.txt
grep "alive" allping.txt > aliveIPtemp.txt
> aliveIP.txt
awk '{print $1;}' aliveIPtemp.txt > aliveIP.txt
#grep -oh "$ValidIPRegex" aliveIPtemp.txt > aliveIP.txt

clear
echo --------------------------------------------------
echo aliveIPtemp:
cat aliveIPtemp.txt

touch aliveIPhist.txt deadIP.txt
comm -13 aliveIP.txt aliveIPhist.txt > deadIP.txt
echo --------------------------------------------------
echo New IPs:
comm -23 aliveIP.txt aliveIPhist.txt

echo --------------------------------------------------
echo aliveIPhist [Old]:
cat aliveIPhist.txt
echo --------------------------------------------------
echo deadIP:
cat deadIP.txt

rm aliveIPtemp.txt allping.txt

echo
echo --------------------------------------------------
echo "Active IPs: "
cat aliveIP.txt
echo --------------------------------------------------
echo "Trigger IPs:"
cat deadIP.txt

# Trigger for dead IP comes here

cp aliveIP.txt aliveIPhist.txt

echo --------------------------------------------------
echo aliveIPhist [New]:
cat aliveIPhist.txt

#_________________________________________________________________
# Retrieve dead IP's MAC address


> deadIPtoMAC.txt
while read -r line; do
arp $line >> deadIPtoMAC.txt
done < deadIP.txt

echo --------------------------------------------------
echo DeadIP:
cat deadIP.txt
echo --------------------------------------------------
echo deadIPtoMAC:
cat deadIPtoMAC.txt

> deadMAC.txt
awk '{print $4;}' deadIPtoMAC.txt > deadMAC.txt

echo --------------------------------------------------
echo "Trigger MACs:"
cat deadMAC.txt

rm deadIP.txt deadMAC.txt deadIPtoMAC.txt aliveIP.txt
#__________________________________________________________________
