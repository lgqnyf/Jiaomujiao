 cd /lustre/haven/proj/UTK0113/fyao2/poultry/
 /lustre/haven/proj/UTK0113/fyao2/poultry/mothur/mothur/mothur

 set.dir(input=/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4, output=/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4)

 make.file(inputdir=/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4, type=fastq, prefix=stability)
      #make sure all the file name in the stability file have the correct name, please remove specific characters like :;' or something else'

make.contigs(file=stability.files, processors=64)
     # 32 samples, 6 hours

trim.seqs(fasta=stability.trim.contigs.fasta, oligos=16.oligo, pdiffs=2)

summary.seqs(fasta=stability.trim.contigs.fasta)

summary.seqs(fasta=stability.trim.contigs.trim.fasta)

screen.seqs(fasta=stability.trim.contigs.fasta, group=stability.contigs.groups, summary=stability.trim.contigs.summary, maxambig=0, maxlength=311)
         ####Job was killed in the first time, I don't know it was killed by mothur or ACF. In the first time, job keeps restart at 694000.
         ###32 processors was used in the second time, job restart at 1389489
         ###Too many sequences were removed
         ###291 is not good, use 330
         ###Third time 311.  
         ###It took 1373 secs to screen 44499917 sequences, removed 13467218
 #screen.seqs(fasta=stability.trim.contigs.fasta, group=stability.contigs.groups, summary=stability.trim.contigs.summary, maxambig=0, maxlength=330)        
         

summary.seqs(fasta=stability.trim.contigs.good.fasta)

unique.seqs(fasta=stability.trim.contigs.good.fasta)
   #10:58 am- 11:10 am

count.seqs(name=stability.trim.contigs.good.names, group=stability.contigs.good.groups)
   #11:11 am -11:18 am

summary.seqs(count=stability.trim.contigs.good.count_table)
   #11:19 am -11:29 am

align.seqs(fasta=stability.trim.contigs.good.unique.fasta, reference=silva.v4.fasta)
    # 11:30 am- 4:54 pm
summary.seqs(fasta=stability.trim.contigs.good.unique.align, count=stability.trim.contigs.good.count_table)
  # 4:55 5:15

screen.seqs(fasta=stability.trim.contigs.good.unique.align, count=stability.trim.contigs.good.count_table, summary=stability.trim.contigs.good.unique.summary, start=2, end=10344, maxhomop=8)
    #900 s

summary.seqs(fasta=current, count=current)
     #600s 
     # of unique seqs:       8365404
     #total # of seqs:        30976993

filter.seqs(fasta=stability.trim.contigs.good.unique.good.align, vertical=T, trump=.)
  #####It took 120 secs to filter 8365404 sequences.
  #Length of filtered alignment: 565
#Number of columns removed: 9779
#Length of the original alignment: 10344
#Number of sequences used to construct filter: 8365404

unique.seqs(fasta=stability.trim.contigs.good.unique.good.filter.fasta, count=stability.trim.contigs.good.good.count_table)

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.count_table
#/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.fasta

pre.cluster(fasta=stability.trim.contigs.good.unique.good.filter.unique.fasta, count=stability.trim.contigs.good.unique.good.filter.count_table, diffs=3)
   #It took 841 secs to run pre.cluster.


chimera.vsearch(fasta=stability.trim.contigs.good.unique.good.filter.unique.precluster.fasta, count=stability.trim.contigs.good.unique.good.filter.unique.precluster.count_table, dereplicate=t)

remove.seqs(fasta=stability.trim.contigs.good.unique.good.filter.unique.precluster.fasta, accnos=stability.trim.contigs.good.unique.good.filter.unique.precluster.denovo.vsearch.accnos)
         #Removed 369081 sequences from your fasta file.
summary.seqs(fasta=current, count=current)
#                Start   End     NBases  Ambigs  Polymer NumSeqs
#Minimum:        1       565     225     0       3       1
#2.5%-tile:      1       565     244     0       4       712780
#25%-tile:       1       565     244     0       4       7127792
#Median:         1       565     244     0       4       14255583
#75%-tile:       1       565     244     0       4       21383374
#97.5%-tile:     1       565     245     0       6       27798386
#Maximum:        1       565     262     0       8       28511165
#Mean:   1       565     244     0       4
# of unique seqs:       372507
#total # of seqs:        28511165

#It took 26 secs to summarize 28511165 sequences.

classify.seqs(fasta=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.fasta, count=stability.trim.contigs.good.unique.good.filter.unique.precluster.denovo.vsearch.pick.count_table, reference=trainset9_032012.pds.fasta, taxonomy=trainset9_032012.pds.tax, cutoff=80)

#It took 153 secs to classify 372507 sequences.


#It took 153 secs to classify 372507 sequences.


#It took 24 secs to create the summary file for 372507 sequences.


#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pds.wang.taxonomy
#/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pds.wang.tax.summary

remove.lineage(fasta=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.fasta, count=stability.trim.contigs.good.unique.good.filter.unique.precluster.denovo.vsearch.pick.count_table, taxonomy=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pds.wang.taxonomy, taxon=Chloroplast-Mitochondria-unknown-Archaea-Eukaryota)

 summary.seqs(fasta=current, count=current)

#                Start   End     NBases  Ambigs  Polymer NumSeqs
#Minimum:        1       565     225     0       3       1
#2.5%-tile:      1       565     244     0       4       712757
#25%-tile:       1       565     244     0       4       7127561
#Median:         1       565     244     0       4       14255121
#75%-tile:       1       565     244     0       4       21382681
#97.5%-tile:     1       565     245     0       6       27797485
#Maximum:        1       565     262     0       8       28510241
#Mean:   1       565     244     0       4
# of unique seqs:       372348
#total # of seqs:        28510241

#It took 26 secs to summarize 28510241 sequences.
summary.tax(taxonomy=current, count=current)

cluster.split(fasta=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.fasta, count=stability.trim.contigs.good.unique.good.filter.unique.precluster.denovo.vsearch.pick.pick.count_table, taxonomy=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pds.wang.pick.taxonomy,splitmethod=classify,taxlevel=4,cutoff=0.03)
      #job was killed after 10 hours running, because I runned on the log in nodes
#      label   cutoff  numotus tp      tn      fp      fn      sensitivity     specificity     ppv     npv     fdr     accuracy                                      mcc      f1score
30.03    0.03    27301   458653515       68624775401     117193176       120708286       0.7917  0.9983  0.7965  0.9982 0.7965                                 0.9966   -0.1368 0.7941

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.dist
#/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.list
#/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.sensspec

make.shared(list=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.list, count=stability.trim.contigs.good.unique.good.filter.unique.precluster.denovo.vsearch.pick.pick.count_table, label=0.03)

classify.otu(list=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.list, count=stability.trim.contigs.good.unique.good.filter.unique.precluster.denovo.vsearch.pick.pick.count_table, taxonomy=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pds.wang.pick.taxonomy, label=0.03)

count.groups(shared=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.shared)

sub.sample(shared=stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.shared, size=531735)

scp fyao2@datamover1.nics.utk.edu:/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.0.03.subsample.shared  .
#Open a new window

scp fyao2@datamover1.nics.utk.edu:/lustre/haven/proj/UTK0113/fyao2/poultry/raw_data/5774-JMD-0001_V4/stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.opti_mcc.0.03.cons.taxonomy   .
#OPen a new window

