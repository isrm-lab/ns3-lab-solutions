#!/bin/bash

cd ~/ns-3-dev
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > nakagami.txt 
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=1" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > log.txt 
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=2" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > log3.txt 
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=3" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > friis.txt 
