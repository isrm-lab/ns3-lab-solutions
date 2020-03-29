#!/bin/bash

./waf --run "lab5 --apManager=ns3::AarfWifiManager" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > aarf.txt
./waf --run "lab5 --apManager=ns3::MinstrelWifiManager" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > minstrel.txt
./waf --run "lab5 --apManager=ns3::IdealWifiManager" | tail -n +7 | head -n -4 | cut -d ' ' -f2,3 > ideal.txt
