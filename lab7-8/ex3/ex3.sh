#!/bin/bash

cd ~/ns-3-dev

for nr in 4 6 7 20 40
do
	for cw in 3 7 15 31 63 127 255 511 1023 2047 4095
	do
		stats=$(./waf --run "lab7-8-cw --ns=$nr --nd=$nr --minCw=$cw --maxCw=$cw --pcap=false --enableRtsCts=false --payloadSize=212" | tail -n 1)
		echo "$nr $cw $stats" >> cw_stats_small.txt
	done
done
