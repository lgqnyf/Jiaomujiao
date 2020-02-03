 /lustre/haven/proj/UTK0113/fyao2/poultry/mothur/mothur/mothur



set.dir(input=/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full, output=/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full)

summary.seqs(fasta=stability.trim.contigs.fasta)

#Using 32 processors.

#                Start   End     NBases  Ambigs  Polymer NumSeqs
#Minimum:        1       35      35      0       2       1
#2.5%-tile:      1       195     195     0       3       173315
#25%-tile:       1       273     273     0       5       1733147
#Median:         1       352     352     1       6       3466293
#75%-tile:       1       372     372     6       6       5199439
#97.5%-tile:     1       477     477     25      8       6759270
#Maximum:        1       500     500     91      249     6932584
#Mean:   1       337     337     4       5
# of Seqs:      6932584

#It took 60 secs to summarize 6932584 sequences.

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.summary

trim.seqs(fasta=stability.trim.contigs.fasta,oligos=primer.oligo)
#It took 91 secs to trim 6932584 sequences.
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.fasta
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.scrap.fasta

summary.seqs(fasta=stability.trim.contigs.trim.fasta, processors=64)

#Using 64 processors.

#                Start   End     NBases  Ambigs  Polymer NumSeqs
#Minimum:        1       17      17      0       2       1
#2.5%-tile:      1       251     251     0       4       150166
#25%-tile:       1       266     266     0       5       1501658
#Median:         1       335     335     1       6       3003315
#75%-tile:       1       353     353     6       6       4504972
#97.5%-tile:     1       381     381     24      8       5856463
#Maximum:        1       481     481     72      249     6006628
#Mean:   1       320     320     4       5
# of Seqs:      6006628
#It took 57 secs to summarize 6006628 sequences.
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.summary

screen.seqs(fasta=stability.trim.contigs.trim.fasta, group=stability.contigs.groups, summary=stability.trim.contigs.trim.summary, maxambig=0,maxlength=382)
#It took 358 secs to screen 6006628 sequences, removed 3179897.

#/******************************************/
#Running command: remove.seqs(accnos=/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.bad.accnos.temp, group=/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.contigs.groups)
#Removed 3179897 sequences from your group file.

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.contigs.pick.groups

#/******************************************/

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.summary
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.fasta
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.bad.accnos
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.contigs.good.groups
#It took 543 secs to screen 6006628 sequences.

summary.seqs(fasta=stability.trim.contigs.trim.good.fasta,processors=64)
#Using 64 processors.
#                Start   End     NBases  Ambigs  Polymer NumSeqs
#Minimum:        1       19      19      0       2       1
#2.5%-tile:      1       251     251     0       4       70669
#25%-tile:       1       255     255     0       5       706683
#Median:         1       334     334     0       6       1413366
#75%-tile:       1       343     343     0       6       2120049
#97.5%-tile:     1       360     360     0       8       2756063
#Maximum:        1       382     382     0       19      2826731
#Mean:   1       315     315     0       5
# of Seqs:      2826731

#It took 27 secs to summarize 2826731 sequences.

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.summary

unique.seqs(fasta=stability.trim.contigs.trim.good.fasta)
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.names
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.fasta

count.seqs(name=stability.trim.contigs.trim.good.names, group=stability.contigs.good.groups)
#It took 33 secs to create a table for 2826731 sequences.
#Total number of sequences: 2826731
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.count_table

summary.seqs(count=stability.trim.contigs.trim.good.count_table)
#Using 64 processors.
#                Start   End     NBases  Ambigs  Polymer NumSeqs
#Minimum:        1       19      19      0       2       1
#2.5%-tile:      1       251     251     0       4       70669
#25%-tile:       1       255     255     0       5       706683
#Median:         1       334     334     0       6       1413366
#75%-tile:       1       343     343     0       6       2120049
#97.5%-tile:     1       360     360     0       8       2756063
#Maximum:        1       382     382     0       19      2826731
#Mean:   1       315     315     0       5
# of unique seqs:       267690
#total # of seqs:        2826731
#It took 20 secs to summarize 2826731 sequences.

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.summary


pre.cluster(fasta=stability.trim.contigs.trim.good.unique.fasta, count=stability.trim.contigs.trim.good.count_table, diffs=3, processors=64)

#It took 7272 secs to run pre.cluster.


chimera.vsearch(fasta=stability.trim.contigs.trim.good.unique.precluster.fasta,count= stability.trim.contigs.trim.good.unique.precluster.count_table,dereplicate=t,processors=64)
#It took 10 secs to check 5310 sequences from group O4N.

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.count_table
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.chimeras
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.accnos


remove.seqs(fasta=stability.trim.contigs.trim.good.unique.precluster.fasta,accnos=stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.accnos)
#[WARNING]: This command can take a namefile and you did not provide one. The current namefile is /lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.names which seems to match /lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.fasta.
#Removed 15446 sequences from your fasta file.
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.fasta

summary.seqs(fasta=stability.trim.contigs.trim.good.unique.precluster.pick.fasta,count=stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.count_table,processors=64)
#Using 64 processors.

#                Start   End     NBases  Ambigs  Polymer NumSeqs
#Minimum:        1       25      25      0       2       1
#2.5%-tile:      1       251     251     0       4       68710
#25%-tile:       1       255     255     0       5       687095
#Median:         1       333     333     0       6       1374189
#75%-tile:       1       342     342     0       6       2061283
#97.5%-tile:     1       359     359     0       8       2679667
#Maximum:        1       382     382     0       19      2748376
#Mean:   1       315     315     0       5
# of unique seqs:       84497
#total # of seqs:        2748376

#It took 4 secs to summarize 2748376 sequences.

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.summary

classify.seqs(fasta=stability.trim.contigs.trim.good.unique.precluster.pick.fasta,count=stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.count_table,reference=UNITEv8_sh_97_all.fasta,taxonomy=UNITEv8_sh_97_all.tax,cutoff=80,processors=64)
# some sequences could not be classfied. You can use the remove.lineage command with taxon=unknown to remove such sequences.
#It took 2358 secs to classify 84497 sequences.
#It took 7 secs to create the summary file for 84497 sequences.
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.taxonomy
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.tax.summary
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.flip.accnos

remove.lineage(fasta=stability.trim.contigs.trim.good.unique.precluster.pick.fasta,count=stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.count_table,taxonomy=stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.taxonomy,taxon=Alveolata-Amoebozoa-Choanoflagellozoa-Chromista-Cryptista-Euglenozoa-Filasteriae-Viridiplantae-Metazoa-Glaucocystoplantae-Haptista-Heterolobosa-Ichthyosporia-unknown-Planomonada-Protista-Rhodoplantae-Stramenopila)
#[NOTE]: The count file should contain only unique names, so mothur assumes your fasta, list and taxonomy files also contain only uniques.
#/******************************************/
#Running command: remove.seqs(accnos=/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.accnos, count=/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.count_table, fasta=/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.fasta)

#[NOTE]: The count file should contain only unique names, so mothur assumes your fasta, list and taxonomy files also contain only uniques.

#Removed 11325 sequences from your fasta file.
#Removed 159622 sequences from your count file.

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.fasta
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.pick.count_table

/******************************************/

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.pick.taxonomy
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.accnos
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.pick.count_table
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.fasta

cluster(fasta=stability.trim.contigs.trim.good.unique.precluster.pick.pick.fasta,count=stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.pick.count_table,method=dgc,cutoff=0.03,processors=64)
#Using 64 processors.
#0.03
#vsearch v2.13.3_linux_x86_64, 251.7GB RAM, 32 cores
#https://github.com/torognes/vsearch

#Reading file stability.trim.contigs.trim.good.unique.precluster.pick.pick.fasta.sorted.fasta.temp 100%
#24936152 nt in 73172 seqs, min 179, max 382, avg 341
#Masking 100%
#Counting k-mers 100%
#Clustering 100%
#Sorting clusters 100%
#Writing clusters 100%
#Clusters: 5749 Size min 1, max 10564, avg 12.7
#Singletons: 3810, 5.2% of seqs, 66.3% of clusters
#It took 110 seconds to cluster

#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.list    

make.shared(list=stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.list,count=stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.pick.count_table,label=0.03)
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.shared

classify.otu(list=stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.list,count=stability.trim.contigs.trim.good.unique.precluster.denovo.vsearch.pick.pick.count_table,taxonomy=stability.trim.contigs.trim.good.unique.precluster.pick.UNITEv8_sh_97_all.wang.pick.taxonomy,label=0.03)
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.0.03.cons.taxonomy
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.0.03.cons.tax.summary

count.groups(shared=stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.shared)
#F1B contains 138949.
#F1N contains 70415.
#F2B contains 83164.
#F2N contains 27569.
#F3B contains 84414.
#F3N contains 47164.
#F4B contains 46332.
#F4N contains 160205.
#M1B contains 67365.
#M1N contains 59973.
#M2B contains 59128.
#M2N contains 60516.
#M3B contains 131453.
#M3N contains 80809.
#M4B contains 173489.
#M4N contains 24854.
#N1B contains 131071.
#N1N contains 90300.
#N2B contains 88304.
#N2N contains 72259.
#N3B contains 28379.
#N3N contains 57235.
#N4B contains 57619.
##N4N contains 82620.
##O1B contains 56878.
#O1N contains 59689.
#O2B contains 67778.
##O2N contains 79263.
##O3B contains 88693.
#O3N contains 83996.
#O4B contains 119753.
#O4N contains 109118.
#Total seqs: 2588754.

sub.sample(shared=stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.shared, size=24854)
#Output File Names:
#/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.0.03.subsample.shared

scp fyao2@datamover1.nics.utk.edu:/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.0.03.subsample.shared  .

scp fyao2@datamover1.nics.utk.edu:/lustre/haven/proj/UTK0113/fyao2/poultry/analysis/ITS_full/stability.trim.contigs.trim.good.unique.precluster.pick.pick.dgc.0.03.cons.taxonomy   .

