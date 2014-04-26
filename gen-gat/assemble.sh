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


table_dir="gat-tables/"
cd ${table_dir}

out_dir="output" && rm -fR ${out_dir} 
mkdir ${out_dir} && cd ${out_dir}
mkdir grade1 grade2 grade3 && cd .. # to base dir


process_ab()
{
    mv ${target_dir}/*[a,b].txt ${to} 
    rm ${target_dir}/*[a,b].txt -f
}

process_left()
{
    mv ${target_dir}/*.txt ${to} 
    rm ${target_dir}/*.txt -f
}


flush_grade1()
{
    for i in ${out_dir}/grade1/*.txt;
    do 
	cat $i >> ${out_dir}/grade1.txt
	rm  $i -f
    done
}


flush_grade2()
{
    for i in ${out_dir}/grade2/*.txt;
    do 
	cat $i >> ${out_dir}/grade2.txt
	rm  $i -f
    done
}

flush()
{
    for i in ${to}/*.txt;
    do 
	cat ${i} >> ${to}/${to}.data
	rm  ${i} -f
    done
}



#                              #
#                     ####    ##
#                    #    #  # #
#                    #         #
#                    #  ###    #
#                    #    #    #
#                     ####   #####

# g1/l
target_dir="g1/l"
grade_hit="${out_dir}/grade1"
grade_missed="${out_dir}/grade2"

process_a_b
process_left

flush_grade1
flush_grade2

# g1/r




#                   
#                            #####
#                     ####  #     #
#                    #    #       #
#                    #       #####
#                    #  ### #
#                    #    # #
#                     ####  #######

# g2/E-l
