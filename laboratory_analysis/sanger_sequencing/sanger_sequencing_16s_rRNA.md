# Analysis of sanger sequencing.

These analysis was performed for 16s rRNA pcr products, primers used were: 8F and 1492R.

The expected amplicon size is 1500bp, and the amplification was confirmed using
1% agarose gel, with ethidium bromide.

After the sequencing process end, the resulting files are ab1, a binary eletropherogram file
created by Aplied Biosystems.

I added those files to Seq Analysis Software(provided by AB), and generated a report using
all the injection folders ( which correspond to how many injections the sequencer used).

Firstly I generated a python script for converting the ab1 files to fasta, which i can use
calling `python ab1_to_fasta.py ${ab1 file}` and them export the fasta files.

Using bioedit I inspected the Eletropherogram files and tryied to create a list with the 
starting cuting points and end points. This file was a table containing the sample ID, the sample fasta file,
the starting cut position and the end cut position.

After creating this table manually inspecting every eletropherogram, I created a PWSH script to cut the fasta
files using the positions written in the table. This produced one concatenated file with multiple fasta files.

The multifasta file was submitted to NCBI BLAST using the ribossomal rna database, and the Blast output
was used to assign taxonomy to each sample.

Some samples had F and R sequences, for these samples I got the reverse complement of the R sequence and them,
created a scaffold with the allignment of the sequences, this allowed me to reach ~950bp amplicons. With
this amplicon, the taxonomy could be confirmed.


