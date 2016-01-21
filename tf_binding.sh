cd ~/githw/biom262-hw1

#exercise 1
grep 'NFKB' tf.bed > tf.nfkb.bed

#exercise 2
awk '$3 == "transcript"' gencode.v19.annotation.chr22.gtf > gencode.v19.annotation.chr22.transcript.gtf

#exercise 3
module load biotools
bedtools flank -i gencode.v19.annotation.chr22.transcript.gtf -g hg19.genome -l 2000 -r 0 -s > gencode.v19.annotation.chr22.transcript.promoter.gtf

#exercise 4
bedtools intersect -a gencode.v19.annotation.chr22.transcript.promoter.gtf -b tf.nfkb.bed > gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf

#exercise 5
bedtools getfasta -s -fi GRCh37.p13.chr22.fa -bed tf.nfkb.bed -fo gencode.v19.annotation.chr22.transcript.nfkb.fasta

echo "Hello I am a message in standard out (stdout)"
echo "Hello I am a message in standard error (stderr) >&2"
