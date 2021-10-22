#!/bin/bash
#SBATCH --qos=debug
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --constraint=haswell
#SBATCH --output=COUNTING_TIME
#SBATCH --error=COUNTING_TIME

k=27
t=16

echo "STARTING COUNTING FOR HMP1: SRS024075"
echo
hmp_file1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS024075/SRS024075.fastq
output1=SRS024075

/usr/bin/time --verbose kmc -k$k -ci0 -cs100000000 -cx1000000000 -r -t$t $hmp_file1 output .
/usr/bin/time --verbose kmc_tools -t$t transform output dump -s $output1
rm output.kmc_pre
rm output.kmc_suf

echo
echo "-----------------------------------------------------------------------------------------"
echo
echo

echo "STARTING COUNTING FOR HMP2:SRS024388"
echo
hmp_file2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS024388/SRS024388.fastq
output2=SRS024388

/usr/bin/time --verbose kmc -k$k -ci0 -cs100000000 -cx1000000000 -r -t$t $hmp_file2 output .
/usr/bin/time --verbose kmc_tools -t$t transform output dump -s $output2
rm output.kmc_pre
rm output.kmc_suf

echo
echo "-----------------------------------------------------------------------------------------"
echo
echo

echo "STARTING COUNTING FOR HMP3:SRS011239"
echo
hmp_file3=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS011239/SRS011239.fastq
output3=SRS011239

/usr/bin/time --verbose kmc -k$k -ci0 -cs100000000 -cx1000000000 -r -t$t $hmp_file3 output .
/usr/bin/time --verbose kmc_tools -t$t transform output dump -s $output3
rm output.kmc_pre
rm output.kmc_suf

echo
echo "-----------------------------------------------------------------------------------------"
echo
echo

echo "STARTING COUNTING FOR HMP4:SRS075404"
echo
hmp_file4=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS075404/SRS075404.fastq
output4=SRS075404

/usr/bin/time --verbose kmc -k$k -ci0 -cs100000000 -cx1000000000 -r -t$t $hmp_file4 output .
/usr/bin/time --verbose kmc_tools -t$t transform output dump -s $output4
rm output.kmc_pre
rm output.kmc_suf

echo
echo "-----------------------------------------------------------------------------------------"
echo
echo

echo "STARTING COUNTING FOR HMP5:SRS043663"
echo
hmp_file5=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS043663/SRS043663.fastq
output5=SRS043663

/usr/bin/time --verbose kmc -k$k -ci0 -cs100000000 -cx1000000000 -r -t$t $hmp_file5 output .
/usr/bin/time --verbose kmc_tools -t$t transform output dump -s $output5
rm output.kmc_pre
rm output.kmc_suf

echo
echo "-----------------------------------------------------------------------------------------"
echo
echo

echo "STARTING COUNTING FOR HMP6:SRS062761"
echo
hmp_file6=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/DATA/SRS062761/SRS062761.fastq
output6=SRS062761

/usr/bin/time --verbose kmc -k$k -ci0 -cs100000000 -cx1000000000 -r -t$t $hmp_file6 output .
/usr/bin/time --verbose kmc_tools -t$t transform output dump -s $output6
rm output.kmc_pre
rm output.kmc_suf

echo
echo "-----------------------------------------------------------------------------------------"
echo
