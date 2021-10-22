#!/bin/bash
#SBATCH --qos=regular
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --constraint=haswell
#SBATCH --output=MIN_MULTI_OUTPUTS
#SBATCH --error=MIN_MULTI_OUTPUTS

k=27
w=27
threads=16

rm -rf Min_Multi
mkdir Min_Multi
cd Min_Multi

echo "STARTING COUNTING FOR HMP1: SRS024075"
r1=94
hmp_file1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS024075/SRS024075.fastq
o1=./SRS024075_counts.jf
d1=./SRS024075_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -w $w -s 10M -t $threads -r $r1 -o $o1 $hmp_file1
jellyfish dump $o1 > $d1
echo "COUNTING FOR HMP1 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP2:SRS024388"
r2=96
hmp_file2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS024388/SRS024388.fastq
o2=./SRS024388_counts.jf
d2=./SRS024388_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -w $w -s 10M -t $threads -r $r2 -o $o2 $hmp_file2
jellyfish dump $o2 > $d2
echo "COUNTING FOR HMP2 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP3:SRS011239"
r3=96
hmp_file3=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS011239/SRS011239.fastq
o3=./SRS011239_counts.jf
d3=./SRS011239_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -w $w -s 10M -t $threads -r $r3 -o $o3 $hmp_file3
jellyfish dump $o3 > $d3
echo "COUNTING FOR HMP3 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP4:SRS075404"
r4=94
hmp_file4=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS075404/SRS075404.fastq
o4=./SRS075404_counts.jf
d4=./SRS075404_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -w $w -s 10M -t $threads -r $r4 -o $o4 $hmp_file4
jellyfish dump $o4 > $d4
echo "COUNTING FOR HMP4 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP5:SRS043663"
r5=100
hmp_file5=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS043663/SRS043663.fastq
o5=./SRS043663_counts.jf
d5=./SRS043663_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -w $w -s 10M -t $threads -r $r5 -o $o5 $hmp_file5
jellyfish dump $o5 > $d5
echo "COUNTING FOR HMP5 finished"

echo
echo
echo

echo "STARTING COUNTING FOR HMP6:SRS062761"
r6=100
hmp_file6=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS062761/SRS062761.fastq
o6=./SRS062761_counts.jf
d6=./SRS062761_counts.fa

/usr/bin/time --verbose jellyfish count -C -m $k -w $w -s 10M -t $threads -r $r6 -o $o6 $hmp_file6
jellyfish dump $o6 > $d6
echo "COUNTING FOR HMP6 finished"

echo
