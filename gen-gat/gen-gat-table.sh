#/bin/bash

# The Script to Generate My Gat Chinese Input Method tables

# 1g: one gram
# 2g: two grams
# 3g: three grams
# 4g: four grams
# 5g: five grams

l='e'
r='t'
left_a={i,o, a}
left_b={h,u,k,x}
left_c={y,p,q,j}
right_a={r,s,n}
right_b={m,l,c}
right_c={d,g,f}
right_d={v,b,w}

# 1g:
for i in {left_a, right_b};
do
	echo $i; # should be alternative
done

# 2g:
for i in {right_a, right_b, left_a, left_b};
do
	echo ${l}${i};
done

# 3g:
for i in {left_a, left_b, right_a, right_b};
do
	for j in {};
	do
		echo ${r}${i}${j}
	done
done

# 4g:
for i in {left_a, left_b, right_a, right_b};
do
	for j in {};
	do
		echo ${l}${r}${i}${j}
	done
done


# 5g:
for i in {left_a, left_b, right_a, right_b};
do
	for j in {};
	do
		for k in {};
		do
			echo ${r}${l}${i}${j}${k}
		done	
	done
done




#left : 3
echo {i,o,a}
echo {h,u,k,x}
echo {y,p,q,j}

# right : 4
echo {r,s,n}
echo {m,l,c}
echo {d,g,f}
echo {v,b,w}



