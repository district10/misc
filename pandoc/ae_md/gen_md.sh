#/bin/bash


wget http://www.gnu.org/software/make/
pandoc -s -r html http://www.gnu.org/software/make/ -o output_gnu_make.md

echo done
