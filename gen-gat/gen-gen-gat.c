#include <stdio.h>


// left_{A,a,b,c} 
const char *lA = "{e,i,o,a,h}"; // left_a with e
const char *la = "{i,o,a,h}";
const char *lb = "{u,k,x}";
const char *lc = "{y,p}";
const char *ld = "{q,j}";

// right_{A,a,b,c,d}
const char *rA = "{t,r,s,n}"; // right_a with t
const char *ra = "{r,s,n}";
const char *rb = "{m,l,c}";
const char *rc = "{d,g,f}";
const char *rd = "{v,b,w}";

// g 1..5
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
  if (strcmp("ld", label) == 0) { printf("%s", ld); }
  if (strcmp("ra", label) == 0) { printf("%s", ra); }
  if (strcmp("rb", label) == 0) { printf("%s", rb); }
  if (strcmp("rc", label) == 0) { printf("%s", rc); }
  if (strcmp("rd", label) == 0) { printf("%s", rd); }

  if (strcmp("lA", label) == 0) { printf("%s", lA); }
  if (strcmp("rA", label) == 0) { printf("%s", rA); }
}




 int main(int argc, char ** argv)
 {
   puts("#!/bin/bash\n");

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

   // g ? 
   puts("Error Occurred!");
   return -1;
 }

