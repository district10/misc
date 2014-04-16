#/bin/bash

counter=1
outformat=""

echo pandoc to manpage example

for i in *.1.md;
do
    output=output_${i%.*}${outformat}
    echo \[${counter}\]: Begin \{ $i -\> $output \}

    pandoc -s -t man $i -o $output

    echo \[${counter}\]: Done \{ $i -\> $output \}
    counter=`expr $counter + 1`
    echo ""
done
