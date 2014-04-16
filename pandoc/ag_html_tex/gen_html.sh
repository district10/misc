#/bin/bash

pandoc math.text -s -o mathDefault.html
pandoc math.text -s --mathml -o mathMathML.html
pandoc math.text -s --webtex -o mathWebTeX.html
pandoc math.text -s --mathjax -o mathMathJax.html
pandoc math.text -s --latexmathml -o mathLaTeXMathML.html

echo done
