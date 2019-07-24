#!/bin/bash

grep ^@STRING references.bib | while read abbr equal journal
do
    sed -i "s/journal   = ${journal::-2}/journal   = ${abbr:8}/" references.bib
done
