#!/bin/bash
#SBATCH --qos=debug
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --constraint=haswell
#SBATCH --output=BC_OUTPUT_PART1
#SBATCH --error=BC_OUTPUT_PART1

hmp1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS024075
hmp2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS024388
hmp3=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS011239
hmp4=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS075404
hmp5=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS043663
hmp6=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS062761


echo "HMP1 vs HMP2"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp1 $hmp2

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP3"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp1 $hmp3

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP4"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp1 $hmp4

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP5"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp1 $hmp5

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP6"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp1 $hmp6

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP3"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp2 $hmp3

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP4"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp2 $hmp4

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP5"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp2 $hmp5

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP6"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp2 $hmp6

echo
echo "-----------------------------------------------------------------------------------------"
echo
