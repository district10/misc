# This is script is called to assemble gat tables

# ============= [ORDER] ============
# First Copy to folder [grade1..3]
# g1: la +
#     ra +
#     rb +
#     lb
#     ==============> [grade1] ,
#     == else to ===> [grade2]

# g2: E-r(a,b,c) +
#     E-la
#     ==============> [grade1] ,
#     == else to ===> [grade2]

# g3: T-l(a,b,c)-r(a,b,c) +
#     T-r(a,b)-l(a,b,c) +
#     T-l(a,b,c)-l(a,b) +
#     T-r(a,b)-r(a,b)
#     ==============> [grade1],
#     == else to ===> [grade3]

# g4: E-T-l(a,b,c)-r(a,b,c) +
#     E-T-r(a,b,c)-l(a,b,c) +
#     E-T-l(a,b,c)-l(a,b) +
#     E-T-r(a,b)-r(a,b)
#     ==============> [grade1] ,
#     == else to ===> [grade3]

# g5: T-E-r-l-r (a,b,c+a,b,c+a,b,c)
#     ==============> [grade1]
#     == else to ===> [grade2]
#     T-E-r-l-l (a,b)
#     ==============> [grade1]
#     == else to ===> [grade2]
#     T-E-r-r-l (abc+abc+abc)
#     T-E-r-r-l (abc+abc+abc)

#     T-E-l-l-r (a,b,c+a,b,c+a,b,c)
#     ==============> [grade1]
#     == else to ===> [grade3]
#     T-E-l-l-l (a,b)
#     ==============> [grade1]
#     == else to ===> [grade3]
#     T-E-l-r-l (abc+abc+abc)
#     T-E-l-r-l (abc+abc+abc)
#
# Then [grade1..3] => gat-table-key
# Then

logout()
{
    echo we come to some problems, so we will exit
    exit
}


table_dir="gat-tables/"
cd ${table_dir} && echo "Processing ${table_dir}" || logout


out_dir="output" && rm -fR ${out_dir}
grade1="grade1"
grade2="grade2"
grade3="grade3"

mkdir ${out_dir} && cd ${out_dir}
mkdir ${grade1} ${grade2} ${grade3} && cd .. # to base dir


#     ######  #    #  #    #   #####     #     ####   #    #   ####
#     #       #    #  ##   #     #       #    #    #  ##   #  #
#     #####   #    #  # #  #     #       #    #    #  # #  #   ####
#     #       #    #  #  # #     #       #    #    #  #  # #       #
#     #       #    #  #   ##     #       #    #    #  #   ##  #    #
#     #        ####   #    #     #       #     ####   #    #   ####

process_orphan()
{
   mv ${from_dir}/*.txt ${to_dir}
   rm ${from_dir}/*.txt -f
   flush
}

process_1_ab()
{
    mv ${from_dir}/*[a,b].txt ${to_dir}
    rm ${from_dir}/*[a,b].txt -f
    flush
}

process_2_ab_ab()
{
    mv ${from_dir}/*[A,a,b]*[A,a,b].txt ${to_dir}
    rm ${from_dir}/*[A,a,b]*[A,a,b].txt -f
    flush
}

process_2_abc_abc()
{
    mv ${from_dir}/*[A,a,b,c]*[A,a,b,c].txt ${to_dir}
    rm ${from_dir}/*[A,a,b,c]*[A,a,b,c].txt -f
    flush
}

process_3_a_a_a()
{
    mv ${from_dir}/*[A,a]*[A,a]*[A,a].txt ${to_dir}
    rm ${from_dir}/*[A,a]*[A,a]*[A,a].txt -f
    flush
}

process_3_ab_ab_ab()
{
    mv ${from_dir}/*[A,a,b]*[A,a,b]*[A,a,b].txt ${to_dir}
    rm ${from_dir}/*[A,a,b]*[A,a,b]*[A,a,b].txt -f
    flush
}

process_3_abc_abc_abc()
{
    mv ${from_dir}/*[A,a,b,c]*[A,a,b,c]*[A,a,b,c].txt ${to_dir}
    rm ${from_dir}/*[A,a,b,c]*[A,a,b,c]*[A,a,b,c].txt -f
    flush
}


flush()
{
    for i in ${to_dir}/*.txt;
    do
	cat ${i} >> ${to_dir}/data.data
	rm  ${i} -f
    done
}


grade2_to_grade1()
{
    cat ${out_dir}/${grade2}/data.data >> ${out_dir}/${grade1}/data.data
    rm  ${out_dir}/${grade2}/data.data -f
}


grade3_to_grade1()
{
    cat ${out_dir}/${grade3}/data.data >> ${out_dir}/${grade1}/data.data
    rm  ${out_dir}/${grade3}/data.data -f
}



#                              #
#                     ####    ##
#                    #    #  # #
#                    #         #
#                    #  ###    #
#                    #    #    #
#                     ####   #####

# g1/l
from_dir="g1/l"
to_dir="${out_dir}/${grade1}" && process_1_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g1/r
from_dir="g1/r"
to_dir="${out_dir}/${grade1}" && process_1_ab
to_dir="${out_dir}/${grade2}" && process_orphan

grade2_to_grade1


#
#                            #####
#                     ####  #     #
#                    #    #       #
#                    #       #####
#                    #  ### #
#                    #    # #
#                     ####  #######

# g2/E-r
from_dir="g2/E-r"
to_dir="${out_dir}/${grade1}" && process_1_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g2/E-l
from_dir="g2/E-l"
to_dir="${out_dir}/${grade1}" && process_1_ab
to_dir="${out_dir}/${grade2}" && process_orphan

grade2_to_grade1


#                            #####
#                     ####  #     #
#                    #    #       #
#                    #       #####
#                    #  ###       #
#                    #    # #     #
#                     ####   #####

# g3/T-l-r
from_dir="g3/T-l-r"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g3/T-r-l
from_dir="g3/T-r-l"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g3/T-l-l
from_dir="g3/T-l-l"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g3/T-r-r
from_dir="g3/T-r-r"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade3}" && process_orphan



#                           #
#                     ####  #    #
#                    #    # #    #
#                    #      #######
#                    #  ###      #
#                    #    #      #
#                     ####       #

# g4/E-T-l-r
from_dir="g4/E-T-l-r"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g4/E-T-r-l
from_dir="g4/E-T-r-l"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g4/E-T-l-l
from_dir="g4/E-T-l-l"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade2}" && process_orphan

# g4/E-T-r-r
from_dir="g4/E-T-r-r"
to_dir="${out_dir}/${grade1}" && process_2_ab_ab
to_dir="${out_dir}/${grade3}" && process_orphan



#                           #######
#                     ####  #
#                    #    # #
#                    #       #####
#                    #  ###       #
#                    #    # #     #
#                     ####   #####

# g5/T-E-r-l-r
from_dir="g5/T-E-r-l-r"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade2}" && process_3_ab_ab_ab
to_dir="${out_dir}/${grade3}" && process_orphan

# g5/T-E-l-r-l
from_dir="g5/T-E-l-r-l"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade2}" && process_3_ab_ab_ab

# merge from 2 to 1
grade2_to_grade1

# g5/T-E-r-l-l
from_dir="g5/T-E-r-l-l"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade2}" && process_3_ab_ab_ab


# g5/T-E-r-r-l
from_dir="g5/T-E-r-r-l"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade2}" && process_3_ab_ab_ab


# g5/T-E-l-l-r
from_dir="g5/T-E-l-l-r"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade2}" && process_3_ab_ab_ab


# g5/T-E-l-r-r
from_dir="g5/T-E-l-r-r"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade2}" && process_3_ab_ab_ab


# g5/T-E-r-r-r
from_dir="g5/T-E-r-r-r"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade3}" && process_3_ab_ab_ab

# g5/T-E-l-l-l
from_dir="g5/T-E-l-l-l"
to_dir="${out_dir}/${grade1}" && process_3_a_a_a
to_dir="${out_dir}/${grade3}" && process_3_ab_ab_ab


# merge from 2 to 1
grade2_to_grade1

# merge from 3 to 1
grade3_to_grade1


#
#         #####    ####   #    #  ######
#         #    #  #    #  ##   #  #
#         #    #  #    #  # #  #  #####     ##
#         #    #  #    #  #  # #  #	   #  #  #
#         #    #  #    #  #   ##  #	       ##
#         #####    ####   #    #  ######






out_file="${out_dir}/${grade1}/data.data"
awk 'NF {print $1}' ${out_file} > ${out_dir}/gat-char-keys.txt

#   ➜  output git:(master) ✗ wc -l gat-char-keys.txt
#   6211 gat-char-keys.txt
#   That's enough for me~
