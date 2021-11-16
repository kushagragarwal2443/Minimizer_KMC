#!/bin/bash
#SBATCH --qos=regular
#SBATCH --nodes=1
#SBATCH --time=06:00:00
#SBATCH --constraint=haswell
#SBATCH --output=BC_COMPLETE_CPP
#SBATCH --error=BC_COMPLETE_CPP

hmp1=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS024075
hmp2=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS024388
hmp3=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS011239
hmp4=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS075404
hmp5=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS043663
hmp6=/global/cfs/cdirs/m3788/projects/min_Jellyfish/SIMULATIONS/bc_distance/Kush_run/MMC/COUNTS/SRS062761


echo "HMP1 vs HMP2"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp1 $hmp2

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP3"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp1 $hmp3

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP4"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp1 $hmp4

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP5"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp1 $hmp5

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP1 vs HMP6"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp1 $hmp6

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP3"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp2 $hmp3

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP4"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp2 $hmp4

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP5"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp2 $hmp5

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP2 vs HMP6"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp2 $hmp6

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP3 vs HMP4"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp3 $hmp4

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP3 vs HMP5"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp3 $hmp5

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP3 vs HMP6"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp3 $hmp6

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP4 vs HMP5"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp4 $hmp5

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP4 vs HMP6"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp4 $hmp6

echo
echo "-----------------------------------------------------------------------------------------"
echo

echo "HMP5 vs HMP6"
echo

g++ bc_script_cpp.cpp -o main
/usr/bin/time --verbose ./main $hmp5 $hmp6

echo
echo "-----------------------------------------------------------------------------------------"
echo