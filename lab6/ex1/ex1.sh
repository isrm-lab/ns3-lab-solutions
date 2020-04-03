#!/bin/bash

cd ~/ns-3-dev
for mcs in ErpOfdmRate6Mbps ErpOfdmRate12Mbps ErpOfdmRate24Mbps ErpOfdmRate54Mbps
do
	./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=$mcs" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > $mcs.txt
done
