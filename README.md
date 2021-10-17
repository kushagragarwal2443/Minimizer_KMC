# KMC Kushagra version


## Update 1: 16th October

---
Current code present in Code/KMC_Oct16 works without -C flag.

When number of reads given increases, there is some segmentation fault (***smashing detected***). Otherwise code works perfectly fine.

To check, cmp_kmc_jelly.py was used to compare the expected fasta output from iterative_counter_robust.py and KMC. 

Just do a **make** and add the bin folder of whichever KMC version you want to use in ~/.bashrc. Then go to sanity_checker folder and run master.sh.

If you want to change number of reads or length of reads go to fasta_simulator.py.

---

## Update 2: 17th October

---
Current code present in Code/KMC_Oct16 works with and without -C flag. 

When number of reads given increases, there is some segmentation fault (***smashing detected***). Otherwise code works perfectly fine.

For running in canonical mode make the variable **canonical_flag = 1** in both ProcessReads and CalcStats. First output on running master.sh is for non_canonical mode and second is for canonical mode.

---


