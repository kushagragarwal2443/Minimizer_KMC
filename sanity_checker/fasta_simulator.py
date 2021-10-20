import random

write_file = open("simulated_fasta.fasta", "w+")

num_sequences = 1000
length_sequence = 1000

for i in range(num_sequences): 
    sequence = ""
    for j in range(length_sequence):
        c = random.randint(0,3)
        x = random.randint(0,10000)
        if(x < -10):
            sequence = sequence + "N"
        # c = 0
        else:
            if(c == 0):
                sequence = sequence + "A"
            if(c == 1):
                sequence = sequence + "T"
            if(c == 2):
                sequence = sequence + "G"
            if(c == 3):
                sequence = sequence + "C"
    write_file.write(">"+str(i)+"\n"+sequence+"\n")

write_file.close()
