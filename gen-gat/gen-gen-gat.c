#include <stdio.h>
#include <stdlib.h>
 
// left-{A,a,b,c} 
const char *lA = "{e,i,o,a}"; // left-a with e
const char *la = "{i,o,a}";
const char *lb = "{h,u,k,x}";
const char *lc = "{y,p,q,j}";

// right-{A,a,b,c,d}
const char *rA = "{t,r,s,n}"; // right-a with t
const char *ra = "{r,s,n}";
const char *rb = "{m,l,c}";
const char *rc = "{d,g,f}";
const char *rd = "{v,b,w}";

// g |..5
const char *g1 = "";
const char *g2 = "e";
const char *g3 = "t";
const char *g4 = "et";
const char *g5 = "te";

void echo (char * label)
{
  if (strcmp("g1", label) == 0) { printf("%s", g1); }
  if (strcmp("g2", label) == 0) { printf("%s", g2); }
  if (strcmp("g3", label) == 0) { printf("%s", g3); }
  if (strcmp("g4", label) == 0) { printf("%s", g4); }
  if (strcmp("g5", label) == 0) { printf("%s", g5); }
  
  if (strcmp("la", label) == 0) { printf("%s", la); }
  if (strcmp("lb", label) == 0) { printf("%s", lb); }
  if (strcmp("lc", label) == 0) { printf("%s", lc); }
  if (strcmp("ra", label) == 0) { printf("%s", ra); }
  if (strcmp("rb", label) == 0) { printf("%s", rb); }
  if (strcmp("rc", label) == 0) { printf("%s", rc); }
  if (strcmp("rd", label) == 0) { printf("%s", rd); }

  if (strcmp("lA", label) == 0) { printf("%s", lA); }
  if (strcmp("rA", label) == 0) { printf("%s", rA); }
}


*/


 int main(int argc, char ** argv)
 {
   puts("#/bin/bash\n");

   // g 1
   if (strcmp("g1", argv[1]) == 0) {
     printf ("%s", "echo -n ' ' && echo ");
     echo(argv[1]); 
     echo(argv[2]); 
     printf ("%s", "$'\\n'\n");
     return 0;
   }

   // g 2
   if (strcmp("g2", argv[1]) == 0) {
     printf ("%s", "echo -n ' ' && echo ");
     echo(argv[1]); 
     echo(argv[2]); 
     printf ("%s", "$'\\n'\n");
     return 0;
   }

   // g 3
   if (strcmp("g3", argv[1]) == 0) {
     printf ("%s", "echo -n ' ' && echo ");
     echo(argv[1]);      
     echo(argv[2]); 
     echo(argv[3]);
     printf ("%s", "$'\\n'\n");
     return 0;
   }

   // g 4
   if (strcmp("g4", argv[1]) == 0) {
     printf ("%s", "echo -n ' ' && echo ");
     echo(argv[1]);      
     echo(argv[2]); 
     echo(argv[3]);
     printf ("%s", "$'\\n'\n");
     return 0;
   }

   // g 5
   if (strcmp("g5", argv[1]) == 0) {
     printf ("%s", "echo -n ' ' && echo ");
     echo(argv[1]);      
     echo(argv[2]); 
     echo(argv[3]);
     echo(argv[4]);
     printf ("%s", "$'\\n'\n");
     return 0;
   }
 }


/*
  printf("%s%s%s%s", left_reserved, right_reserved, left_b, right_b);
  printf("%s%s%s%s", left_reserved, right_reserved, left_b, right_c);
  printf("%s%s%s%s", left_reserved, right_reserved, left_b, right_d);
  printf("%s%s%s%s", left_reserved, right_reserved, left_c, right_a);
  printf("%s%s%s%s", left_reserved, right_reserved, left_c, right_b);
  printf("%s%s%s%s", left_reserved, right_reserved, left_c, right_c);
  printf("%s%s%s%s", left_reserved, right_reserved, left_c, right_d);
  printf("%s%s%s%s", left_reserved, right_reserved, left_a, left_a); // e t L L
  printf("%s%s%s%s", left_reserved, right_reserved, left_a, left_b);
  printf("%s%s%s%s", left_reserved, right_reserved, left_a, left_c);
  printf("%s%s%s%s", left_reserved, right_reserved, left_b, left_a);
  printf("%s%s%s%s", left_reserved, right_reserved, left_b, left_b);
  printf("%s%s%s%s", left_reserved, right_reserved, left_b, left_c);
  printf("%s%s%s%s", left_reserved, right_reserved, left_c, left_a);
  printf("%s%s%s%s", left_reserved, right_reserved, left_c, left_b);
  printf("%s%s%s%s", left_reserved, right_reserved, left_c, left_c);
  
	   left_a);
	   left_b);
	   left_c);


  right_a,
  right_b,
  right_c, 
  right_d,

  printf("%s%s%s%s", left_reserved, right_reserved, right_a, right_a
  printf("%s%s%s%s", left_reserved, right_reserved, right_a, right_b
  printf("%s%s%s%s", left_reserved, right_reserved, right_a, right_c
  printf("%s%s%s%s", left_reserved, right_reserved, right_a, right_d
  printf("%s%s%s%s", left_reserved, right_reserved, right_b, right_a
  printf("%s%s%s%s", left_reserved, right_reserved, right_b, right_b
  printf("%s%s%s%s", left_reserved, right_reserved, right_b, right_c
  printf("%s%s%s%s", left_reserved, right_reserved, right_b, right_d
  printf("%s%s%s%s", left_reserved, right_reserved, right_c, 
  printf("%s%s%s%s", left_reserved, right_reserved, right_c, 
  printf("%s%s%s%s", left_reserved, right_reserved, right_c, 
  printf("%s%s%s%s", left_reserved, right_reserved, right_c, 



  printf("%s%s%s%s", left_reserved, right_reserved, right_d,

*/

/*
void gen_overall(int level, char *l)
{
  puts("#/bin/bash\n");
  switch (level) {
  case 1:
    printf("%s", )
  }
}
*/
/*
void gen_1g(char left);
void gen_2g(char left);
void gen_3g(char left, char rgi);
*/

/*

// 1 g
// l
void gen_1g_la();
void gen_1g_lb();
void gen_1g_lc();

// r
void gen_1g_ra();
void gen_1g_rb();
void gen_1g_rc();
void gen_1g_rd();

// 2 g
// l
void gen_2g_e_la();
void gen_2g_e_lb();
void gen_2g_e_lc();
// r 
void gen_2g_e_ra();
void gen_2g_e_rb();
void gen_2g_e_rc();
void gen_2g_e_rd();

// 3 g
// e l l
void gen_3g_t_la_la();
void gen_3g_t_la_lb();
void gen_3g_t_la_lc();

void gen_3g_t_lb_la();
void gen_3g_t_lb_lb();
void gen_3g_t_lb_lc();

void gen_3g_t_lc_la();
void gen_3g_t_lc_lb();
void gen_3g_t_lc_lc();

void gen_3g_t_lc_la();
void gen_3g_t_lc_lb();
void gen_3g_t_lc_lc();

// e l r
void gen_3g_t_la_ra();
void gen_3g_t_la_rb();
void gen_3g_t_la_rc();
void gen_3g_t_la_rd();

void gen_3g_t_lb_ra();
void gen_3g_t_lb_rb();
void gen_3g_t_lb_rc();
void gen_3g_t_lb_rd();

void gen_3g_t_lc_ra();
void gen_3g_t_lc_rb();
void gen_3g_t_lc_rc();
void gen_3g_t_lc_rd();
// e r l
void gen_3g_t_ra_la();
void gen_3g_t_ra_lb();
void gen_3g_t_ra_lc();

void gen_3g_t_rb_la();
void gen_3g_t_rb_lb();
void gen_3g_t_rb_lc();

void gen_3g_t_rc_la();
void gen_3g_t_rc_lb();
void gen_3g_t_rc_lc();

void gen_3g_t_rd_la();
void gen_3g_t_rd_lb();
void gen_3g_t_rd_lc();
// e r r
void gen_3g_t_ra_ra();
void gen_3g_t_ra_rb();
void gen_3g_t_ra_rc();
void gen_3g_t_ra_rd();
		 
void gen_3g_t_rb_ra();
void gen_3g_t_rb_rb();
void gen_3g_t_rb_rc();
void gen_3g_t_rb_rd();
		 
void gen_3g_t_rc_ra();
void gen_3g_t_rc_rb();
void gen_3g_t_rc_rc();
void gen_3g_t_rc_rd();
		 
void gen_3g_t_rd_ra();
void gen_3g_t_rd_rb();
void gen_3g_t_rd_rc();
void gen_3g_t_rd_rd();


// 4 g
// t l l 
void gen_3g_t_la_la();
void gen_3g_t_la_lb();
void gen_3g_t_la_lc();

void gen_3g_t_lb_la();
void gen_3g_t_lb_lb();
void gen_3g_t_lb_lc();

void gen_3g_t_lc_la();
void gen_3g_t_lc_lb();
void gen_3g_t_lc_lc();

void gen_3g_t_lc_la();
void gen_3g_t_lc_lb();
void gen_3g_t_lc_lc();

// e l r
void gen_3g_t_la_ra();
void gen_3g_t_la_rb();
void gen_3g_t_la_rc();
void gen_3g_t_la_rd();

void gen_3g_t_lb_ra();
void gen_3g_t_lb_rb();
void gen_3g_t_lb_rc();
void gen_3g_t_lb_rd();

void gen_3g_t_lc_ra();
void gen_3g_t_lc_rb();
void gen_3g_t_lc_rc();
void gen_3g_t_lc_rd();
// e r l
void gen_3g_t_ra_la();
void gen_3g_t_ra_lb();
void gen_3g_t_ra_lc();

void gen_3g_t_rb_la();
void gen_3g_t_rb_lb();
void gen_3g_t_rb_lc();

void gen_3g_t_rc_la();
void gen_3g_t_rc_lb();
void gen_3g_t_rc_lc();

void gen_3g_t_rd_la();
void gen_3g_t_rd_lb();
void gen_3g_t_rd_lc();
// e r r
void gen_3g_t_ra_ra();
void gen_3g_t_ra_rb();
void gen_3g_t_ra_rc();
void gen_3g_t_ra_rd();
		 
void gen_3g_t_rb_ra();
void gen_3g_t_rb_rb();
void gen_3g_t_rb_rc();
void gen_3g_t_rb_rd();
		 
void gen_3g_t_rc_ra();
void gen_3g_t_rc_rb();
void gen_3g_t_rc_rc();
void gen_3g_t_rc_rd();
		 
void gen_3g_t_rd_ra();
void gen_3g_t_rd_rb();
void gen_3g_t_rd_rc();
void gen_3g_t_rd_rd();









la();
lb();		 
lc();

ra();
rb();
rc();
rd();


void gen_3g_t_rb_
void gen_3g_t_rb_
void gen_3g_t_rb_

		 
void gen_3g_t_rc_
void gen_3g_t_rc_
void gen_3g_t_rc_

		 
void gen_3g_t_rd_
void gen_3g_t_rd_
void gen_3g_t_rd_

*/






