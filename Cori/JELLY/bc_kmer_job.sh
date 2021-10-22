#!/bin/bash
#SBATCH --qos=regular
#SBATCH --nodes=2
#SBATCH --time=12:00:00
#SBATCH --constraint=haswell
#SBATCH --output=BC_KMER_OUTPUTS
#SBATCH --error=BC_KMER_OUTPUTS

hmp1="SRS024075"
hmp2="SRS024388"

echo "STARTING COMPARISON FOR HMP1 VS HMP2"
python3 kmer_script.py "SRS024075" "SRS024388"
echo "HMP1 VS HMP2 finished"

echo
echo
