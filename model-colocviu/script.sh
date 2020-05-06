#!/bin/bash

cd ~/ns-3-dev
rm output_udp.txt
rm output_tcp.txt

for numberOfNodes in {2..20}
do
	stats=$(./waf --run "model-colocviu --numberOfNodes=$numberOfNodes --simulationTime=20" | tail -1)
	echo $numberOfNodes $stats >> output_udp.txt
done

for numberOfNodes in {2..20}
do
	stats=$(./waf --run "model-colocviu --numberOfNodes=$numberOfNodes --simulationTime=20 --runTcp=true" | tail -1)
	echo $numberOfNodes $stats >> output_tcp.txt
done