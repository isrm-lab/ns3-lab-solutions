#!/bin/bash

cd ~/ns-3-dev
sed -i 's/WIFI_PHY_STANDARD_80211g/WIFI_PHY_STANDARD_80211b/g' /home/student/ns3-labs/lab-03-04-capacity/lab3.cc

for numberOfNodes in {2..30}
do	

	stats=$(./waf --run "lab3 --numberOfNodes=$numberOfNodes --payloadSize=1460 --offeredRate=11Mbps --phyRate=DsssRate11Mbps --simulationTime=2" | tail -1 | cut -d ' ' -f3)
	echo $numberOfNodes $stats >> lab4_4_udp.txt
done

sed -i 's/WIFI_PHY_STANDARD_80211b/WIFI_PHY_STANDARD_80211g/g' /home/student/ns3-labs/lab-03-04-capacity/lab3.cc

for numberOfNodes in {2..30}
do	

	stats=$(./waf --run "lab3 --numberOfNodes=$numberOfNodes --payloadSize=1460 --offeredRate=11Mbps --phyRate=DsssRate11Mbps --simulationTime=2 --runTcp=true" | tail -1 | cut -d ' ' -f3)
	echo $numberOfNodes $stats >> lab4_4_tcp.txt
done
