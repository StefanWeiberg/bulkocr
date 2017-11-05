#!/bin/bash
cd $1
parallel "tesseract {} {} -l deu+eng pdf" ::: *.jpg
mkdir -p OCR
pdfunite $(ls -v *.pdf) OCR/$(date "+%Y%m%d-%H%M%S").pdf
