#/bin/bash

echo gene dzslides.html
pandoc -s --mathml  -i -t dzslides SLIDES  -o dzslides.html

echo gene slidy.html 
pandoc -s --webtex  -i -t slidy SLIDES     -o slidy.html 

echo gene revealjs.html
pandoc -s --mathjax -i -t revealjs SLIDES  -o revealjs.html
