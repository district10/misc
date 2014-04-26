#!/bin/bash

# Run it as: `bash gen-gat.sh'

start=$(date +%s%N) # time it, start

# use bin to generate gen-gat scripts, so it's called gen-gen-gat
# this is the compiled binary file of my gen-gen-gat.c
bin='/root/Desktop/misc/gen-gat/gen-gen-gat.bin'

# print out some friendly message
echo ">> Generating Gat Tables..."

# specify output dir, to store scripts and txt tables
# if there is already this folder, just delete the old one
outdir="gat-tables"
rm -Rf ${outdir} && mkdir ${outdir} && cd ${outdir}

# count char combinations, how big our chinese table matters of course
char=0


# chars are in varient length, catagrayed as g1, g2, g3, g4, g5
# we count script files in each gram cat, and counte the time consumed to generate these tables


#                              #
#                     ####    ##
#                    #    #  # #
#                    #         #
#                    #  ###    #
#                    #    #    #
#                     ####   #####

gram='g1'
mkdir ${gram} && cd ${gram}

counter1=0
echo -n Generating ${gram} tables ...
echo -n "#Table Finished: "
tput sc

s=$(date +%s%N)
for x in {l,r};
do
    wd="${x}" # working dir
    mkdir ${wd} && cd ${wd}
    for i in {a,b,c,d};
    do
	p1=${x}${i} && oo="${p1}"
	${bin} ${gram} $p1 > ${oo}.sh
	bash ${oo}.sh > ${oo}.txt
	tput rc;
	tput ed;
	let counter1++
	echo -n ${counter1}
    done
    cd ..
done
cd ..

e=$(date +%s%N)
d1=$((e - s))
echo -n "-------- $((d1/1000000)) milliseconds"
echo ""

#
#                            #####
#                     ####  #     #
#                    #    #       #
#                    #       #####
#                    #  ### #
#                    #    # #
#                     ####  #######
#

gram='g2'
mkdir ${gram} && cd ${gram}

counter2=0
echo -n Generating ${gram} tables ...
echo -n "#Table Finished: "
tput sc

s=$(date +%s%N)
for x in {l,r};
do
    wd="E-${x}" # working dir
    mkdir ${wd} && cd ${wd}
    for i in {a,b,c,d};
    do
	p1=${x}${i} && oo="E-${p1}"
	${bin} ${gram} $p1 > ${oo}.sh
	bash ${oo}.sh > ${oo}.txt
	tput rc;
	tput ed;
	let counter2++
	echo -n ${counter2}
    done
    cd ..
done

cd ..

e=$(date +%s%N)
d2=$((e - s))
echo -n "-------- $((d2/1000000)) milliseconds"
echo ""

#                            #####
#                     ####  #     #
#                    #    #       #
#                    #       #####
#                    #  ###       #
#                    #    # #     #
#                     ####   #####

gram='g3' && mkdir ${gram} && cd ${gram}

counter3=0
echo -n Generating ${gram} tables ...
echo -n "#Table Finished: "
tput sc

s=$(date +%s%N)
for x in {l,r};
do
    for y in {l,r};
    do
	wd="T-${x}-${y}" # working dir
	mkdir ${wd} && cd ${wd}
	for i in {a,b,c,d};
	do
	    for j in {a,b,c,d};
	    do
		p1=${x}${i} && p2=${y}${j} && oo="T-${p1}-${p2}"
		${bin} ${gram} $p1 $p2 > ${oo}.sh
		bash ${oo}.sh > ${oo}.txt
		tput rc;
		tput ed;
		let counter3++
		echo -n ${counter3}
	    done
	done
	cd ..
    done
done

cd ..

e=$(date +%s%N)
d3=$((e - s))
echo -n "-------- $((d3/1000000)) milliseconds"
echo ""

#                           #
#                     ####  #    #
#                    #    # #    #
#                    #      #######
#                    #  ###      #
#                    #    #      #
#                     ####       #

gram='g4' && mkdir ${gram} && cd ${gram}

counter4=0
echo -n Generating ${gram} tables ...
echo -n "#Table Finished: "
tput sc

s=$(date +%s%N)
for x in {l,r};
do
    for y in {l,r};
    do
	wd="E-T-${x}-${y}" # working dir
	mkdir ${wd} && cd ${wd}
	for i in {A,b,c,d};
	do
	    for j in {A,b,c,d};
	    do
		p1=${x}${i} && p2=${y}${j} && oo="E-T-${p1}-${p2}"
		${bin} g4 $p1 $p2 > ${oo}.sh
		bash ${oo}.sh > ${oo}.txt
		tput rc;
		tput ed;
		let counter4++
		echo -n ${counter4}
	    done
	done
	cd ..
    done
done

cd ..

e=$(date +%s%N)
d4=$((e - s))
echo -n "-------- $((d4/1000000)) milliseconds"
echo ""

#                           #######
#                     ####  #
#                    #    # #
#                    #       #####
#                    #  ###       #
#                    #    # #     #
#                     ####   #####

gram='g5' && mkdir ${gram} && cd ${gram}

s=$(date +%s%N)
counter5=0
echo -n Generating ${gram} tables ...
echo -n "#Table Finished: "
tput sc

for x in {l,r};
do
    for y in {l,r};
    do
	for z in {l,r};
	do
	    wd="T-E-${x}-${y}-${z}" # working dir
	    mkdir ${wd} && cd ${wd}
	    for i in {A,b,c,d};
	    do
		for j in {A,b,c,d};
		do
		    for k in {A,b,c,d};
		    do
			p1=${x}${i} && p2=${y}${j} && p3=${z}${k} && oo="T-E-${p1}-${p2}-${p3}"
			${bin} ${gram} $p1 $p2 $p3 > ${oo}.sh
			bash ${oo}.sh > ${oo}.txt
			tput rc;
			tput ed;
			let counter5++
			echo -n ${counter5}
		    done
		done
	    done
	    cd ..
	done
    done
done

cd ..

e=$(date +%s%N)
d5=$((e - s))
echo -n "-------- $((d5/1000000)) milliseconds"
echo ""



# show the overall info
counter=$((counter1 + counter2 + counter3 + counter4 + counter5))
d=$((d1 + d2 + d3 + d4 + d5))
echo ">> Generated ${counter} files in $((d/1000000000)) seconds"
