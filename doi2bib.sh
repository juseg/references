#!/bin/bash

doi2bib $1 | grep -vP '^\t(month|url|publisher)' >> references.bib && bibtool
