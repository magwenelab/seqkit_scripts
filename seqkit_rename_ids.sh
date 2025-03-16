#!/usr/bin/env bash

# Replace the IDs in a FASTA file using the new IDs in a map file
# The map file should have two columns, the first with the old IDs and the second with the new IDs

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 INFILE MAPFILE"
    echo
    echo "INFILE: the input FASTA file"
    echo "MAPFILE: the map file with the old and new IDs"
    exit 1
fi

# Assign arguments to variables
INFILE=$1
MAPFILE=$2

seqkit replace -p '^(\S+)' -r '{kv}' -k ${MAPFILE} ${INFILE}