import sys

def min_val(value1, value2):
    if(value1 < value2):
        return value1
    else:
        return value2

def bc_compute(file1, file2, file3):

    write_file = open(file3, "w+")

    both = []

    count_file1 = 0
    count_file2 = 0
    count_both = 0

    f1 = open(file1, 'r')
    f2 = open(file2, 'r')
    line1 = f1.readline()
    line2 = ""

    while line1:

        line1_split = line1.split("\t")
        kmer1 = line1_split[0]
        count1 = int(line1_split[1])
        line2 = f2.readline()

        if(line2 == ""):
            break

        while line2:
            line2_split = line2.split("\t")
            kmer2 = line2_split[0]
            count2 = int(line2_split[1])

            if(kmer1 > kmer2):
                count_file2 += count2
                line2 = f2.readline()

            elif(kmer2 == kmer1):

                count_both += min_val(count1, count2)
                write_file.write(kmer1 + " " + str(count1)+ " " + str(count2)+ " " + str(min_val(count1, count2)) + "\n")
                count_file1 += count1
                count_file2 += count2
                line1 = f1.readline()
                line2 = f2.readline()

                if(line1 == ""):
                    break

                line1_split = line1.split("\t")
                kmer1 = line1_split[0]
                count1 = int(line1_split[1])
                
            else:

                count_file1 += count1
                line1 = f1.readline()

                if(line1 == ""):
                    break

                line1_split = line1.split("\t")
                kmer1 = line1_split[0]
                count1 = int(line1_split[1])


    if(line1 != ''):
        line1_split = line1.split("\t")
        count_file1 += int(line1_split[1])

        line1 = f1.readline()
        while(line1):
            line1_split = line1.split("\t")
            count_file1 += int(line1_split[1])
            line1 = f1.readline()

    
    if(line2 != ''):
        line2_split = line2.split("\t")
        count_file2 += int(line2_split[1])

        line2 = f2.readline()
        while(line2):
            line2_split = line2.split("\t")
            count_file2 += int(line2_split[1])
            line2 = f2.readline()

    
    dist = 1.0 - (2.0 * float(count_both/(count_file1 + count_file2)))

    print(count_file1, count_file2, count_both, dist)
    write_file.close()



def main():

    args = sys.argv
    file1 = str(args[1])
    file2 = str(args[2])
    file3 = str(args[3])
    bc_compute(file1, file2, file3)

    return

main()