#!/bin/bash

input=simulated_fasta.fasta
k=25
w=25
t=4
sig=9

cd ../Code/KMC_Oct16
make
cd -

python3 fasta_simulator.py

# jellyfish count -m $k -s 1M -t $t $input
# jellyfish dump mer_counts.jf > jelly.fa
# rm mer_counts.jf
# python3 iterative_counter_robust.py

python3 iterative_counter_robust.py $k $w
kmc -b -p$sig -t$t -k$k -ci0 -fm $input output .
kmc_tools -t$t transform output dump -s kmc
echo
echo
echo
python3 cmp_kmc_jelly.py

python3 iterative_counter_robust_withC.py $k $w
kmc -p$sig -t$t -k$k -ci0 -fm $input output .
kmc_tools -t$t transform output dump -s kmc
echo
echo
echo
python3 cmp_kmc_jelly.py