#!/bin/bash

cd ~/ns-3-dev
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=1" | tail -n +7 | head -n -4 | cut -d ' ' -f2,6,7 > udp_tries_1.txt
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=4" | tail -n +7 | head -n -4 | cut -d ' ' -f2,4,5 > udp_tries_4.txt
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=7" | tail -n +7 | head -n -4 | cut -d ' ' -f2,4,5 > udp_tries_7.txt
