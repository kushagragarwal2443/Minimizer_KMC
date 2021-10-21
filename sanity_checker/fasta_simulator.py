import random
import sys


def simulate(n, l, error):

    write_file = open("simulated_fasta.fasta", "w+")

    num_sequences = n
    length_sequence = l

    for i in range(num_sequences): 
        sequence = ""
        for j in range(length_sequence):
            c = random.randint(0,3)
            x = random.randint(0,10000)
            if(x < error):
                sequence = sequence + "N"
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

def main():
    args = sys.argv
    n = int(str(args[1]))
    l = int(str(args[2]))
    error = int(str(args[3]))

    simulate(n, l, error)

main()
