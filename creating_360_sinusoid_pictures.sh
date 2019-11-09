#!/bin/bash
#drawing 360 pictures of sin function
#so that switching them quickly enough
#will yeild a smooth flipbook animation effect
#of shifting the sinusoid as a wave
OFFSET=0
for((I=1;$I<=360;I++)); do
    NAME=`printf "%03d.png" $I`
    gnuplot << EOF
set angles degrees
set xrange [0:360]
set term png size 800,600
set output "$NAME"
plot sin(x + $OFFSET)
EOF
    ((OFFSET++))
done
