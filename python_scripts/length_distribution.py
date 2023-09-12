#!/usr/bin/env python

import argparse 
import matplotlib.pyplot as plt
import numpy

def get_args():
    parser= argparse.ArgumentParser()
    parser.add_argument("-f1", "--filename1", help="Input filename", required=True)
    parser.add_argument("-f2", "--filename2", help="Input filename", required=True)
    parser.add_argument("-o", "--output", help="Output filename", required=False)
    return parser.parse_args()
args = get_args()
f1=args.filename1
o=args.output
f2=args.filename2

#making a dictionary to hold {lenght,count} 
r1_count_dict={}
r2_count_dict={}
i=0
j=0
with open(f1,"r") as f1, open(f2,"r") as f2:
    for line in f1:
        line=line.strip("\n")
        line=line.split()
        r1_count_dict[int(line[1])]=int(line[0])
        i+=1
    for line in f2:
        line=line.strip("\n")
        line=line.split()
        r2_count_dict[int(line[1])]=int(line[0])
        j+=1
#for key in r1_count_dict:
    

plt.title("Trimmed Length Distribution of Read 1 and Read 2")
plt.xlabel("Length of Read")
plt.ylabel("Log Transfromed Frequency")
plt.bar(x=list(r1_count_dict.keys()),height=list(r1_count_dict.values()),alpha=0.5,label="Forward Reads")
plt.bar(x=list(r2_count_dict.keys()),height=list(r2_count_dict.values()),alpha=0.5,label="Reverse Reads")
plt.yscale("log")
plt.legend(loc="upper left")
plt.savefig("213G_lengthdistribution") 
  
   
#plt.bar(x=[list(r1_count_dict.keys()),list(r2_count_dict)],height=[list(r1_count_dict.values()),list(r2_count_dict.values())])
#plt.yscale("log")
#plt.savefig("goodshit")


             



