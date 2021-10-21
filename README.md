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

## Update 3: 17th October Evening

---

GOD EXISTS !! **smashing detected** solved by building everytime before running. 

Minor error when multiple reads are present still exists. 300 errors in 7.5 lac minimizers when simulating 10**5 reads of size 1000 each.

---

## Update 4: 19th October Afternoon

All errors are now gone. Code works perfectly!!

Caviat: When read lengths are greater than 10**7, then error occurs as KMC tries to split a read into multiple subsequences

---

## Update 5: 20th October Afternoon

When a read has a N character it gets skipped. Code working.

---

## Update 6: 21st October through the night

While pushing, the signatures of the forward and reverse strands minimizers werent the same (which is expected). Therefore the output files had 2 entries for many minimizers.
Solved using *rev (size signature_len) and kmer_strand_buffer[256].

Code working.

Can run ./comp.sh to verify that the bc_dist computed by the code is same as that by Jelly.

---

