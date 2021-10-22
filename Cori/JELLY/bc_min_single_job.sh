#!/bin/bash
#SBATCH --qos=regular
#SBATCH --nodes=1
#SBATCH --time=12:00:00
#SBATCH --constraint=haswell
#SBATCH --output=BC_MIN_SINGLE_OUTPUTS
#SBATCH --error=BC_MIN_SINGLE_OUTPUTS

hmp1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024075_counts.fa
hmp2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024388_counts.fa
hmp3=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS011239_counts.fa
hmp4=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS075404_counts.fa
hmp5=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS043663_counts.fa
hmp6=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS062761_counts.fa

echo "STARTING COMPARISON FOR HMP1 VS HMP2"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024075_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024388_counts.fa
echo "HMP1 VS HMP2 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP3"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024075_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS011239_counts.fa
echo "HMP1 VS HMP3 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP4"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024075_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS075404_counts.fa
echo "HMP1 VS HMP4 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP5"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024075_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS043663_counts.fa
echo "HMP1 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP1 VS HMP6"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024075_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS062761_counts.fa
echo "HMP1 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP3"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024388_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS011239_counts.fa
echo "HMP2 VS HMP3 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP4"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024388_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS075404_counts.fa
echo "HMP2 VS HMP4 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP5"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024388_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS043663_counts.fa
echo "HMP2 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP2 VS HMP6"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS024388_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS062761_counts.fa
echo "HMP2 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP3 VS HMP4"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS011239_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS075404_counts.fa
echo "HMP3 VS HMP4 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP3 VS HMP5"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS011239_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS043663_counts.fa
echo "HMP3 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP3 VS HMP6"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS011239_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS062761_counts.fa
echo "HMP3 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP4 VS HMP5"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS075404_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS043663_counts.fa
echo "HMP4 VS HMP5 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP4 VS HMP6"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS075404_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS062761_counts.fa
echo "HMP4 VS HMP6 finished"

echo
echo
echo

echo "STARTING COMPARISON FOR HMP5 VS HMP6"
python3 script.py /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS043663_counts.fa /global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/Min_Single/SRS062761_counts.fa
echo "HMP5 VS HMP6 finished"

echo
