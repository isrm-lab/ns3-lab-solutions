#!/bin/bash

cd ~/ns-3-dev
rm eq_cw_fixed.txt
for cw in 7 31 511 4095
do
	for simTime in 5 20 50
	do
		for nr in {2..20}
		do
			stats=$(./waf --run "lab9 --minCw=$cw --maxCw=$cw --nn=$nr --pcap=false --simulationTime=$simTime" | tail -n 1)
			echo "$cw $simTime $stats" >> eq_cw_fixed.txt
		done
	done
done
