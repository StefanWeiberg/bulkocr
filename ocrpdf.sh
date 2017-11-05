#!/bin/bash
cd $1
parallel "tesseract {} {} -l deu+eng pdf" ::: *.jpg
pdfunite $(ls -v *.pdf) $(date "+%Y%m%d-%H%M%S").pdf
