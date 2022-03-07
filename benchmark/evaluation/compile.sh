#!/bin/bash
if [ $# -ge 1 ] && [ $1 == "clean" ];
then
	set -x
	rm mapGenome calGenome calNMI calF1 calViral
else
	set -x
	g++ ./src/mapGenome.cpp -lz -o mapGenome
	g++ ./src/calGenome.cpp -lz -o calGenome
	g++ ./src/calNMI.cpp -o calNMI
	g++ ./src/calF1.cpp -o calF1
	g++ ./src/calViral.cpp -o calViral
fi


