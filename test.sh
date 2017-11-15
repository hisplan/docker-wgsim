#!/bin/bash

docker run -it --rm -v $(pwd):/data wgsim \
    -N 1000 \
    -S 1 \
    /data/NC_008253.fna \
    /data/ecoli.r1.fastq \
    /data/ecoli.r2.fastq
