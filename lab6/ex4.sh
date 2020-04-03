#!/bin/bash

for wifiManagerType in Aarf Minstrel Ideal
do
	./waf --run "lab5 --apManager=ns3::"$wifiManagerType"WifiManager --isTcp=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3 > tcp_${wifiManagerType}.txt
done
