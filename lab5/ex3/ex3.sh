#!/bin/bash

cd ~/ns-3-dev
./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=1 --isTcp=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3,4,5 > tcp_tries_1.txt
#./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=4 --isTcp=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3,4,5 > tcp_tries_4.txt
#./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=7 --isTcp=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3,4,5 > tcp_tries_7.txt

./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=1 --isTcp=true --useRtsCts=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3,4,5 > tcp_tries_rts_1.txt
#./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=4 --isTcp=true --useRtsCts=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3,4,5 > tcp_tries_rts_4.txt
#./waf --run "lab5 --apManager=ns3::ConstantRateWifiManager --phyRate=ErpOfdmRate54Mbps --propagationModel=0 --tries=7 --isTcp=true --useRtsCts=true" | tail -n +7 | head -n -8 | cut -d ' ' -f2,3,4,5 > tcp_tries_rts_7.txt
