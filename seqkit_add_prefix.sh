#!/usr/bin/env bash

# Add a prefix to the sequence IDs in a FASTA file

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 INFILE PREFIX"
    exit 1
fi

# Assign arguments to variables
INFILE=$1
PREFIX=$2

# Add the suffix to the sequence IDs, writing to stdout
seqkit replace -p ^ -r ${PREFIX}_ ${INFILE}
