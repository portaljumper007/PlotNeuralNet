#!/bin/bash


"C:\Users\encha\AppData\Local\Programs\Python\Python311\python.exe" $1.py 
pdflatex $1.tex

rm *.aux *.log *.vscodeLog
rm *.tex

if [[ "$OSTYPE" == "darwin"* ]]; then
    open $1.pdf
else
    xdg-open $1.pdf
fi
