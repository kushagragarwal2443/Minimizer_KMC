#!/bin/bash

# input=../test_red.fastq
input=simulated_fasta.fasta
k=27
w=27
t=1
sig=9

n=1000
l=1000

# Write error in %
error=10

# cd ../MMC_Nchar_update/
# make clean
# make
# cd -

# cd ../Code/KMC_Oct21
# # make clean
# make
# cd -

python3 fasta_simulator.py $n $l $error

# jellyfish count -m $k -s 1M -t $t $input
# jellyfish dump mer_counts.jf > jelly.fa
# rm mer_counts.jf
# python3 iterative_counter_robust.py



#  Use this when simulating with error = 0 to check correctness with earlier code
# python3 iterative_counter_robust_withC.py $k $w $input

# Use this to check error with current code with N character support
python3 iterative_counter_robust_withC_withN.py $k $w $input



# kmc -p$sig -t$t -k$k -ci0 -fm $input output .
# kmc_tools -t$t transform output dump -s kmc

mmc -p$sig -t$t -k$k -wv$w -ci0 -fm $input output .
mmc_tools -t$t transform output dump -s kmc

echo
echo
echo

python3 cmp_kmc_jelly.py