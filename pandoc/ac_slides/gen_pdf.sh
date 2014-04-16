#/bin/bash

counter=1
outformat=".pdf"

echo SLIDES to PDF example

for i in *.txt;
do
    output=output_${i%.*}${outformat}
    echo \[${counter}\]: Begin \{ $i -\> $output \}

    pandoc -t beamer $i -o $output

    echo \[${counter}\]: Done \{ $i -\> $output \}
    counter=`expr $counter + 1`
    echo ""
done
