#!/bin/bash

grep ^@STRING references.bib | while read abbr equal journal
do
    pattern=${journal//./.*}  # replace '.' with '.*' (match anything)
    sed -i "s/  journal   = ${pattern::-2}/  journal   = ${abbr:8}/" references.bib
done
