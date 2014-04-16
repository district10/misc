#/bin/bash

counter=1
outformat=".html"

echo COMBINED html example

for i in *.txt;
do
    output=output_${i%.*}${outformat}
    echo \[${counter}\]: Begin \{ $i -\> $output \}

	    
    pandoc -s -S --toc -c pandoc.css -A footer.html $i -o $output

    echo \[${counter}\]: Done \{ $i -\> $output \}
    counter=`expr $counter + 1`
    echo ""
done
