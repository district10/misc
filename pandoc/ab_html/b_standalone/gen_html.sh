#/bin/bash

counter=1
outformat=".html"

echo STANDALONE html example

for i in *.txt;
do
    output=output_${i%.*}${outformat}
    echo \[${counter}\]: Begin \{ $i -\> $output \}

    pandoc -s $i -o $output

    echo \[${counter}\]: Done \{ $i -\> $output \}
    counter=`expr $counter + 1`
    echo ""
done
