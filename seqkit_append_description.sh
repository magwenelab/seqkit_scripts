#!/usr/bin/env bash

# Add text to all description fields in a FASTA file

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 INFILE TEXT"
    exit 1
fi

# Assign arguments to variables
INFILE=$1
TEXT=$2

# Add the TEXT to the sequence description, writing to stdout
seqkit replace -p $ -r " | ${TEXT}" ${INFILE}