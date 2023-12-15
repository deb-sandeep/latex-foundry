#!/bin/bash

# Build the example PDF on Linux systems (on mac, use TexLive)
pdflatex \
    -file-line-error \
    -halt-on-error \
    -synctex=1 \
    -output-directory="target/temp"  \
    -output-format=pdf \
    -recorder \
    -synctex 1 \
    main.tex
