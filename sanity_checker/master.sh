#!/bin/bash

# input=../test_red.fastq
input=simulated_fasta.fasta
k=26
w=13
t=1
sig=9

n=500
l=39
error=0

# cd ../Code/KMC_Oct21
# # make clean
# make
# cd -

python3 fasta_simulator.py $n $l $error

# jellyfish count -m $k -s 1M -t $t $input
# jellyfish dump mer_counts.jf > jelly.fa
# rm mer_counts.jf
# python3 iterative_counter_robust.py

# python3 iterative_counter_robust.py $k $w $input
# kmc -b -p$sig -t$t -k$k -ci0 -fa $input output .
# kmc_tools -t$t transform output dump -s kmc

python3 iterative_counter_robust_withC.py $k $w $input

# kmc -p$sig -t$t -k$k -ci0 -fm $input output .
# kmc_tools -t$t transform output dump -s kmc

# echo
# echo

mmc -t$t -k$k -wv$w -ci0 -fm $input output .
mmc_tools -t$t transform output dump -s kmc

echo
echo
echo

python3 cmp_kmc_jelly.py