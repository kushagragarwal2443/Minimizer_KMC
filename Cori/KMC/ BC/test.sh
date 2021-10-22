#!/bin/bash
#SBATCH --qos=debug
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --constraint=haswell
#SBATCH --output=BC_TEST
#SBATCH --error=BC_TEST

hmp1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/KMC/COUNTS/SRS024075
hmp2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/KMC/COUNTS/SRS024388

echo "HMP1 vs HMP2"
echo

/usr/bin/time --verbose python3 bc_script.py $hmp1 $hmp2

echo
echo "-----------------------------------------------------------------------------------------"
echo
