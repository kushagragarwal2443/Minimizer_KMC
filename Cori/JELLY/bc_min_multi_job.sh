#!/bin/bash
#SBATCH --qos=regular
#SBATCH --nodes=1
#SBATCH --time=12:00:00
#SBATCH --constraint=haswell
#SBATCH --output=BC_MIN_MULTI_OUTPUTS
#SBATCH --error=BC_MIN_MULTI_OUTPUTS

hmp1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Multi/SRS024075_counts.fa
hmp2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Multi/SRS024388_counts.fa
hmp3=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Multi/SRS011239_counts.fa
hmp4=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Multi/SRS075404_counts.fa
hmp5=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Multi/SRS043663_counts.fa
hmp6=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Multi/SRS062761_counts.fa

echo "STARTING COMPARISON FOR HMP1 VS HMP2"
python3 script.py $hmp1 $hmp2
echo "HMP1 VS HMP2 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP3"
python3 script.py $hmp1 $hmp3
echo "HMP1 VS HMP3 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP4"
python3 script.py $hmp1 $hmp4
echo "HMP1 VS HMP4 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP5"
python3 script.py $hmp1 $hmp5
echo "HMP1 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP6"
python3 script.py $hmp1 $hmp6
echo "HMP1 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP3"
python3 script.py $hmp2 $hmp3
echo "HMP2 VS HMP3 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP4"
python3 script.py $hmp2 $hmp4
echo "HMP2 VS HMP4 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP5"
python3 script.py $hmp2 $hmp5
echo "HMP2 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP6"
python3 script.py $hmp2 $hmp6
echo "HMP2 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP3 VS HMP4"
python3 script.py $hmp3 $hmp4
echo "HMP3 VS HMP4 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP3 VS HMP5"
python3 script.py $hmp3 $hmp5
echo "HMP3 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP3 VS HMP6"
python3 script.py $hmp3 $hmp6
echo "HMP3 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP4 VS HMP5"
python3 script.py $hmp4 $hmp5
echo "HMP4 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP4 VS HMP6"
python3 script.py $hmp4 $hmp6
echo "HMP4 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP5 VS HMP6"
python3 script.py $hmp5 $hmp6
echo "HMP5 VS HMP6 finished"

echo
