#!/usr/bin/env bash

# Add a suffix to the sequence IDs in a FASTA file

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 INFILE SUFFIX"
    exit 1
fi

# Assign arguments to variables
INFILE=$1
SUFFIX=$2

# Add the suffix to the sequence IDs, writing to stdout
seqkit replace -p '^(\S+)' -r '${1}_'${SUFFIX} ${INFILE}
