#!/usr/bin/env bash

# This script will output the sequence lengths of all sequences in a FASTA file
# Usage: bash seqkit_seq_lengths.sh <FASTA file>

# check if the user has provided input
if [ $# -eq 0 ]; then
    echo "Usage: seqkit_seq_lengths.sh <FASTA file>"
    exit 1
fi

FASTA=$1

seqkit seq  -in $FASTA \
| parallel "seqkit grep -p {} $FASTA | seqkit stats -i {} -T --quiet"  :::: \
| awk '$0 !~ /^file/' \
| sort -t$'\t' -k1,1 \
| awk -vOFS="," '{print $1,$8}'