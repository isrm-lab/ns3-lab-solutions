#!/bin/bash

cd ~/ns-3-dev

# ./waf --run "wifi-tcp --pcap=true"

tshark -T fields -e frame.time_epoch -e frame.number -e ip.src -r ./AccessPoint-0-0.pcap 'wlan.fc.type_subtype == 0x08' > beacon_frames.txt
tshark -T fields -e frame.time_epoch -e wlan_radio.phy -e frame.number -r ./AccessPoint-0-0.pcap 'wlan.fc.type_subtype == 0x0011' > unreserved.txt
tshark -T fields -e frame.time_epoch -e wlan_radio.phy -e frame.number -r ./AccessPoint-0-0.pcap 'wlan.fc.type_subtype == 0x0028' > qos_data_frames.txt
