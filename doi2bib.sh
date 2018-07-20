#!/bin/bash

export PYTHONIOENCODING='utf8'
doi2bib $1 | grep -vP '^\t(month|url|publisher)' >> references.bib && bibtool
