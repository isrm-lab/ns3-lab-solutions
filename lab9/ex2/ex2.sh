#!/bin/bash

cd ~/ns-3-dev
rm eq_cw_standard.txt

for simTime in 5 20 50
do
	for nr in {2..20}
	do
		stats=$(./waf --run "lab9 --minCw=15 --maxCw=1023 --nn=$nr --pcap=false --simulationTime=$simTime" | tail -n 1)
		echo "$simTime $stats" >> eq_cw_standard.txt
	done
done
