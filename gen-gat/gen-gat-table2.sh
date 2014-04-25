#|
#|     ####     ##     #####
#|    #    #   #  #      #
#|    #       #    #     #
#|    #  ###  ######     #
#|    #    #  #    #     #
#|     ####   #    #     #
#|
#|    Chinese Input Method




# ================= 1 G ====================
# 1g: 7 (g => gram)

{i,o,a}  
{h,u,k,x}
{y,p,q,j}

{r,s,n}
{m,l,c}
{d,g,f}
{v,b,w}

================

{e,i,o,a}  
{h,u,k,x}
{y,p,q,j}

{t,r,s,n}
{m,l,c}
{d,g,f}
{v,b,w}



left_a
left_b
left_c

right_a
right_b
right_c
right_d










# <l> : 3
echo {i,o,a}
echo {h,u,k,x}
echo {y,p,q,j}

# <r> : 4
echo {r,s,n}
echo {m,l,c}
echo {d,g,f}
echo {v,b,w}


# ================= 2 G ====================
# 2g: 7

# [e] + <l> : 3
echo e{i,o,a}
echo e{h,u,k,x}
echo e{y,p,q,j}

# [e] + <r> : 4
echo e{r,s,n}
echo e{m,l,c}
echo e{d,g,f}
echo e{v,b,w}


# ================= 3 G ====================
# 3g: 7 * 7

# [t] + <l> + <r> : 3 * 4
echo t{i,o,a}{t,r,s,n}
echo t{i,o,a}{m,l,c}
echo t{i,o,a}{d,g,f}
echo t{i,o,a}{v,b,w}

echo t{h,u,k,x}{t,r,s,n}
echo t{h,u,k,x}{m,l,c}
echo t{h,u,k,x}{d,g,f}
echo t{h,u,k,x}{v,b,w}

echo t{y,p,q,j}{t,r,s,n}
echo t{y,p,q,j}{m,l,c}
echo t{y,p,q,j}{d,g,f}
echo t{y,p,q,j}{v,b,w}

# [t] + <l> + <l> : 3 * 3
echo   t{i,o,a}{i,o,a}  
echo t{h,u,k,x}{h,u,k,x}
echo t{y,p,q,j}{y,p,q,j}

echo   t{i,o,a}{i,o,a}  
echo t{h,u,k,x}{h,u,k,x}
echo t{y,p,q,j}{y,p,q,j}

echo   t{i,o,a}{i,o,a}  
echo t{h,u,k,x}{h,u,k,x}
echo t{y,p,q,j}{y,p,q,j}

# [t] + <r> + <l> : 4 * 3
echo t{t,r,s,n}{e,i,o,a}  
echo t{t,r,s,n}{h,u,k,x}
echo t{t,r,s,n}{y,p,q,j}

echo t{m,l,c}{e,i,o,a}  
echo t{m,l,c}{h,u,k,x}
echo t{m,l,c}{y,p,q,j}

echo t{d,g,f}{e,i,o,a}  
echo t{d,g,f}{h,u,k,x}
echo t{d,g,f}{y,p,q,j}

echo t{v,b,w}{e,i,o,a}  
echo t{v,b,w}{h,u,k,x}
echo t{v,b,w}{y,p,q,j}

# [t] + <r> + <r> : 4 * 4
echo t{t,r,s,n}{t,r,s,n}
echo t{t,r,s,n}{m,l,c}
echo t{t,r,s,n}{d,g,f}
echo t{t,r,s,n}{v,b,w}

echo t{m,l,c}{t,r,s,n}
echo t{m,l,c}{m,l,c}
echo t{m,l,c}{d,g,f}
echo t{m,l,c}{v,b,w}

echo t{d,g,f}{t,r,s,n}
echo t{d,g,f}{m,l,c}
echo t{d,g,f}{d,g,f}
echo t{d,g,f}{v,b,w}

echo t{v,b,w}{t,r,s,n}
echo t{v,b,w}{m,l,c}
echo t{v,b,w}{d,g,f}
echo t{v,b,w}{v,b,w}

# ================= 4 G ====================
# 4g
# [e] + [t] + <l> + <r> : 3 * 4
echo et{e,i,o,a}{t,r,s,n}
echo et{e,i,o,a}{m,l,c}
echo et{e,i,o,a}{d,g,f}
echo et{e,i,o,a}{v,b,w}

echo et{h,u,k,x}{t,r,s,n}
echo et{h,u,k,x}{m,l,c}
echo et{h,u,k,x}{d,g,f}
echo et{h,u,k,x}{v,b,w}

echo et{y,p,q,j}{t,r,s,n}
echo et{y,p,q,j}{m,l,c}
echo et{y,p,q,j}{d,g,f}
echo et{y,p,q,j}{t,b,w}

# [t] + <l> + <l> : 3 * 3
echo   et{i,o,a}{i,o,a}  
echo et{h,u,k,x}{h,u,k,x}
echo et{y,p,q,j}{y,p,q,j}

echo   et{i,o,a}{i,o,a}  
echo et{h,u,k,x}{h,u,k,x}
echo et{y,p,q,j}{y,p,q,j}

echo     et{i,o,a}{i,o,a}  
echo et{h,u,k,x}{h,u,k,x}
echo et{y,p,q,j}{y,p,q,j}

# [t] + <r> + <l> : 4 * 3
echo et{r,s,n}{i,o,a}  
echo et{r,s,n}{h,u,k,x}
echo et{r,s,n}{y,p,q,j}

echo et{m,l,c}{i,o,a}  
echo et{m,l,c}{h,u,k,x}
echo et{m,l,c}{y,p,q,j}

echo et{d,g,f}{i,o,a}  
echo et{d,g,f}{h,u,k,x}
echo et{d,g,f}{y,p,q,j}

echo et{v,b,w}{i,o,a}  
echo et{v,b,w}{h,u,k,x}
echo et{v,b,w}{y,p,q,j}

# [t] + <r> + <r> : 4 * 4
echo et{r,s,n}{r,s,n}
echo et{r,s,n}{m,l,c}
echo et{r,s,n}{d,g,f}
echo et{r,s,n}{v,b,w}

echo et{m,l,c}{r,s,n}
echo et{m,l,c}{m,l,c}
echo et{m,l,c}{d,g,f}
echo et{m,l,c}{v,b,w}

echo et{d,g,f}{r,s,n}
echo et{d,g,f}{m,l,c}
echo et{d,g,f}{d,g,f}
echo et{d,g,f}{v,b,w}

echo et{v,b,w}{r,s,n}
echo et{v,b,w}{m,l,c}
echo et{v,b,w}{d,g,f}
echo et{v,b,w}{v,b,w}
































echo et{e,i,o,a}{t,r,s,n}
echo et{e,i,o,a}{m,l,c}
echo et{e,i,o,a}{d,g,f}
echo et{e,i,o,a}{v,b,w}

echo et{e,h,u,k,x}{r,s,n}
echo et{e,h,u,k,x}{m,l,c}
echo et{e,h,u,k,x}{d,g,f}
echo et{e,h,u,k,x}{v,b,w}

echo et{e,y,p,q,j}{r,s,n}
echo et{y,p,q,j}{m,l,c}
echo et{y,p,q,j}{d,g,f}
echo et{y,p,q,j}{v,b,w}



# ================= 1 G ====================
# 5g

# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}

# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}
# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}
# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}
# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}
# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}
# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}
# [t] + [e] + <l> + <r> + <l> : 3 * 4 * 3
echo te{}(}(}



echo {}{}{}
