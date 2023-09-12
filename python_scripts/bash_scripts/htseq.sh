#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=interactive               #REQUIRED: which partition to use
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB
conda activate BGMP_QAA
/usr/bin/time -v htseq-count --stranded=yes /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/21_3G_QAAAligned.out.sam /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/Mus_musculus.GRCm39.110.gtf > 21_3G_fw.genecount
/usr/bin/time -v htseq-count --stranded=reverse /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/21_3G_QAAAligned.out.sam /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/Mus_musculus.GRCm39.110.gtf > 21_3G_rv.genecount

/usr/bin/time -v htseq-count --stranded=yes /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/34_4H_QAAsAligned.out.sam /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/Mus_musculus.GRCm39.110.gtf > 34_4H_fw.genecount
/usr/bin/time -v htseq-count --stranded=reverse /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/34_4H_QAAsAligned.out.sam /projects/bgmp/klindley/bioinfo/Bi623/QAA/alignment/Mus_musculus.GRCm39.110.gtf > 34_4H_rv.genecount