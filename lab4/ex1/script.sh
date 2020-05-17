#!/bin/bash

cd ~/ns-3-dev
sed -i 's/WIFI_PHY_STANDARD_80211g/WIFI_PHY_STANDARD_80211b/g' /home/student/ns3-labs/lab-03-04-capacity/lab3.cc

for phyRate in DsssRate1Mbps DsssRate2Mbps DsssRate5_5Mbps DsssRate11Mbps
do	
	for payloadSize in 20 50 100 500 1000 1500
	do
		stats=$(./waf --run "lab3 --numberOfNodes=2 --payloadSize=$payloadSize --offeredRate=11Mbps --phyRate=$phyRate --simulationTime=2 --enableRtsCts=true" | tail -1 | cut -d ' ' -f3)
		echo $phyRate $payloadSize $stats >> lab4_1_80211_b.txt
	done
done
