#!/bin/bash

k=14
w=14
t=1
sig=9

n=1000
l=10000
error=0

input1=simulated_fasta1.fasta
input2=simulated_fasta2.fasta
output1=kmc1
output2=kmc2
output3=jelly1.fa
output4=jelly2.fa
outkmc=bc_kmc.txt
outjel=bc_jel.txt

cd ../Code/KMC_Oct21
make
cd -

python3 fasta_simulator.py $n $l $error
mv simulated_fasta.fasta $input1

python3 fasta_simulator.py $n $l $error
mv simulated_fasta.fasta $input2


kmc -p$sig -t$t -k$k -ci0 -fm $input1 output .
kmc_tools -t$t transform output dump -s $output1
echo
echo
kmc -p$sig -t$t -k$k -ci0 -fm $input2 output .
kmc_tools -t$t transform output dump -s $output2
echo
echo
python3 bc_script.py $output1 $output2 $outkmc

jellyfish count -C -w $w -r $l -m $k -s 1M -t $t $input1
jellyfish dump mer_counts.jf > $output3
rm mer_counts.jf

jellyfish count -C -w $w -r $l -m $k -s 1M -t $t $input2
jellyfish dump mer_counts.jf > $output4
rm mer_counts.jf

python3 /home/kushagra/Documents/IISc_Internship/Jellyfish/BC_Dist/bc_distance_computation.py $output3 $output4 $outjel