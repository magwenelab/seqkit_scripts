#!/usr/bin/env bash

# Drop the sequence matching the given sequence ID from a fasta file
# writes to stdout

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 INFILE PATTERN"
    exit 1
fi

# Assign arguments to variables
INFILE=$1
PATTERN=$2


seqkit grep -v -r -p ${PATTERN} ${INFILE}