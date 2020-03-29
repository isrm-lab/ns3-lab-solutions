#!/bin/bash

for wifiManagerType in Aarf Minstrel Ideal
do
	for tries in 1 4 7
	do
		echo "Running tcp_${wifiManagerType}_${tries}.txt"
		./waf --run "lab5 --apManager=ns3::"$wifiManagerType"WifiManager --tries=$tries --isTcp=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3 > tcp_${wifiManagerType}_${tries}.txt
	done
done
