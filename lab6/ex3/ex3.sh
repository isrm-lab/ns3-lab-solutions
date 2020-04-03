#!/bin/bash

cd ~/ns-3-dev
for wifiManagerType in Aarf Minstrel Ideal
do
	./waf --run "lab5 --apManager=ns3::"$wifiManagerType"WifiManager --pcap=true"
	mv lab5-propagation-adaptive-0-0.pcap lab5-propagation-adaptive-0-0-$wifiManagerType.pcap
	mv lab5-propagation-adaptive-1-0.pcap lab5-propagation-adaptive-1-0-$wifiManagerType.pcap
	tshark -T fields -e frame.time_epoch -e wlan_radio.data_rate -e wlan_radio.signal_dbm -r lab5-propagation-adaptive-1-0-$wifiManagerType.pcap 'ip.proto == 17' > udp_frames_$wifiManagerType.txt
done
