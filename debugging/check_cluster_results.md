# Checking cluster results

## Context:
I'm working into the analysis of fastq files for a bacterial genomis study.
During this work, we found some samples with bad alignment to the reference,
so my advisor decided that I should remove 280 samples and keep 1381 samples.

For this task I recieved a Excel file with one sheet containing samples ID's
for the samples that I should keep. For more context each sample ID follow
this pattern: `ERR000000` and I excpect to have 2 files for each samples
folowing this pattern: `ERR000000_R{1,2}.p.fastq.gz`.

The toughest part of this task was to perform the checks using the cluster
masternode, without downloading the `fastq.gz` file and without the possibility
of installing CLI tools, so my main tools should be the GNU utils avaible on
almost every linux computer.

## Solution

First I decided to do a sanity check for the files, following this simple
observation: we have 1381 files, so I shoud have 2762 files in total after
moving them.

I used the column with IDs and regex101 to create a sh template to move
the files to a destination folder:

```bash
mv /source_folder/${SAMPLE_ID}*.fastq.gz /destination_folder/.
```

after moving the files I checked for file counting:

```bash
ls | wc -l
```

and end up with this number: 2700, so obviously 62 samples were missing.

I decided to test which files were missing using grep and xargs.

First I created a file containing all `fastq.gz` files moved.
```bash
ls > all_files.txt
```
then I created one file only with the samples ID, one each line. For this
I pasted the ID column into a vim file.

Now I needed to check how many times each sample id appears in the folder file.

```bash
cat sample_ids.txt | xargs -i sh -c 'echo {} &&  grep -c {} all_files.txt' | sed 'N;s/\n/ /' >> appearance.txt

```
Outputs:

```
SAMPLE_ID 2
SAMPLE_ID 2
SAMPLE_ID 2
```

This will print the sample name and then the appearance time that should be
exactly 2

I checked briefly that using grep:

```bash
grep " 0" appearance.txt
```

And the result was empty :astonished:.

This was really odd, and I spent some thinking in how to proceed.

I run =COUNTUNIQUE() and =COUNT() on excel and found that the sample ID's
has repetitive samples IDs, Exactly 31 repeating samples.

I could double check using this code:

```
wc -l sample_ids.txt
sort samples_ids.txt | uniq -c | wc -l
```

If the result is different, then we have not-unique ids.

After checking that, I concluded that the moved samples were unique and matched
unique ids by number.

