#!/bin/bash
#SBATCH --qos=regular
#SBATCH --nodes=1
#SBATCH --time=12:00:00
#SBATCH --constraint=haswell
#SBATCH --output=KMER_OUTPUTS
#SBATCH --error=KMER_OUTPUTS

k=27
threads=16

rm -rf Kmer
mkdir Kmer
cd Kmer

echo "STARTING COUNTING FOR HMP1: SRS024075"
hmp_file1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS024075/SRS024075.fastq
o1=./SRS024075_counts.jf
d1=./SRS024075_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -s 10M -t $threads -o $o1 $hmp_file1
jellyfish dump $o1 > $d1
echo "COUNTING FOR HMP1 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP2:SRS024388"
hmp_file2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS024388/SRS024388.fastq
o2=./SRS024388_counts.jf
d2=./SRS024388_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -s 10M -t $threads -o $o2 $hmp_file2
jellyfish dump $o2 > $d2
echo "COUNTING FOR HMP2 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP3:SRS011239"
hmp_file3=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS011239/SRS011239.fastq
o3=./SRS011239_counts.jf
d3=./SRS011239_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -s 10M -t $threads -o $o3 $hmp_file3
jellyfish dump $o3 > $d3
echo "COUNTING FOR HMP3 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP4:SRS075404"
hmp_file4=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS075404/SRS075404.fastq
o4=./SRS075404_counts.jf
d4=./SRS075404_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -s 10M -t $threads -o $o4 $hmp_file4
jellyfish dump $o4 > $d4
echo "COUNTING FOR HMP4 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP5:SRS043663"
hmp_file5=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS043663/SRS043663.fastq
o5=./SRS043663_counts.jf
d5=./SRS043663_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -s 10M -t $threads -o $o5 $hmp_file5
jellyfish dump $o5 > $d5
echo "COUNTING FOR HMP5 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP6:SRS062761"
hmp_file6=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS062761/SRS062761.fastq
o6=./SRS062761_counts.jf
d6=./SRS062761_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -s 10M -t $threads -o $o6 $hmp_file6
jellyfish dump $o6 > $d6
echo "COUNTING FOR HMP6 finished"

echo
