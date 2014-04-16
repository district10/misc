#/bin/bash


#declare -a format={"pygments" "kate" "monochrome" "espresso" "haddock" "tango" "zenburn"}
#for i in "${format[@]}"

counter=1

format="
pygments
kate 
monochrome
espresso
haddock
tango 
zenburn
"

for i in $format
do
   echo \[${counter}\]: generating output_${i}.html
   pandoc code.text -s --highlight-style ${i} -o output_${i}.html
   counter=`expr $counter + 1`
done
