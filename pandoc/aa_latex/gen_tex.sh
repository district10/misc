#/bin/bash

echo Pandoc latex.txt to latex.tex

pandoc -s latex.txt -o latex.tex

echo done
