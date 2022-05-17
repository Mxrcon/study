import sys
from Bio import SeqIO



ab1_name = sys.argv[1]
fasta_name = ab1_name.split(".")[0] + ".fasta"

record = SeqIO.read(ab1_name, "abi")

with open(fasta_name, "w") as output_file:
    output_file.write(">{0}\n{1}\n".format(ab1_name.split(".")[0],record.seq))

