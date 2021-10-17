#!/bin/bash

input=simulated_fasta.fasta
k=21
t=1
sig=5

python3 fasta_simulator.py
jellyfish count -m $k -s 1M -t $t $input
jellyfish dump mer_counts.jf > jelly.fa
rm mer_counts.jf
python3 iterative_counter_robust.py
kmc -b -p$sig -t$t -k$k -ci0 -fa $input output .
kmc_tools -t$t transform output dump -s kmc
echo
echo
echo
python3 cmp_kmc_jelly.py