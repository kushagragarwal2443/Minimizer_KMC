#include <iostream>
#include <fstream>
#include <string>

using namespace std;


int main(int argc, char** argv)
{
    fstream newfile1;
    fstream newfile2;

    double count_file1 = 0;
    double count_file2 = 0;
    double count_both = 0;
    int file2_flag = 0;
    int end_of_file1 = 0;
    int end_of_file2 = 0;
    std::string kmer1;
    std::string kmer2;
    double count1;
    double count2;

    newfile1.open(argv[1],ios::in);
    newfile2.open(argv[2],ios::in);

    string tp;

    while(!end_of_file1)
    {
        if(getline(newfile1, tp))
        {
            size_t pos = tp.find('\t');
            kmer1 = tp.substr(0,pos);
            count1 = stoi(tp.substr(pos, tp.length() - pos));
            count_file1 += count1;
        }
        else
        {
            end_of_file1 = 1;
            break;
        }
        
        // std::cout << "kmer1 " << kmer1 << ", count1 " << count1 << ", count_file1 " << count_file1 << std::endl;
    
        while(!end_of_file2)
        {
            if(file2_flag == 0)
            {
                if(getline(newfile2, tp))
                {
                    // std::cout << "PARSING" << std::endl;
                    size_t pos = tp.find('\t');
                    kmer2 = tp.substr(0,pos);
                    count2 = stoi(tp.substr(pos, tp.length() - pos));   
                    count_file2 += count2;
                }      
                else
                {
                    // std::cout << "AT EOF: " << std::endl;
                    end_of_file2 = 1;
                    break; 
                }                
            }

            // std::cout << "kmer2 " << kmer2 << ", count2 " << count2 << ", count_file2 " << count_file2 << std::endl;
            
            if(kmer1.compare(kmer2) > 0)
            {
                // std::cout << "IF: " << kmer1 << " " << kmer2 << std::endl;
                // count_file2 += count2;
                file2_flag = 0;
                continue;

            }
            else if(kmer1.compare(kmer2) == 0)
            {
                // std::cout << "ELSE IF: " << kmer1 << " " << kmer2 << std::endl;
                count_both += min(count1, count2);
                file2_flag = 0;
                break;
            }
            else
            {
                // std::cout << "ELSE: " << kmer1 << " " << kmer2 << std::endl;
                // count_file1 += count1;
                file2_flag = 1;
                break;
            }

        }

        if(end_of_file2 == 1)
        {
            break;
        }

    }

    while(end_of_file1 == 0 && end_of_file2 == 1 && getline(newfile1, tp))
    {
        // std::cout << "OUTER FIRST" << std::endl;
        size_t pos = tp.find('\t');
        kmer1 = tp.substr(0,pos);
        count1 = stoi(tp.substr(pos, tp.length() - pos));
        count_file1 += count1;
    }

    while(end_of_file1 == 1 && end_of_file2 == 0 && getline(newfile2, tp))
    {
        // std::cout << "OUTER SECOND" << std::endl;
        size_t pos = tp.find('\t');
        kmer2 = tp.substr(0,pos);
        count2 = stoi(tp.substr(pos, tp.length() - pos));
        count_file2 += count2;
    }

    newfile1.close();
    newfile2.close();

    double dist = 1.0 - (2.0 * ((count_both)/(count_file1 + count_file2)));

    std::cout << "NUMERATOR: " << count_both << std::endl;
    std::cout << "DENOMINATOR: " << count_file1 << " " << count_file2 << std::endl;
    std::cout << "BC DISSIMILARITY: " << dist << std::endl;

    return 0;

}