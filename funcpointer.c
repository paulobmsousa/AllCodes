/* Complex C declarations - reading and writing
 Pointers to functions, array of pointer to functions 
 Author: Svillen Ranev
*/
#include <stdio.h>
/*function declarations - protopypes */
float add (float a, float b);
float sub (float a, float b);
float mul (float a, float b);
float div (float a, float b);

/* pointer to function taking two ints and returning int */
typedef float (*PTR_F)(float,float); /*PTR_F is the new data type name */

int main (void) {
  /* pointer to function taking two ints and returning int */
  float (*ptr_f)(float,float);
  PTR_F ptr_ft; /* same as above */

  /* array of pointer to function */
  #define numOfFunc 4
  float (*aptr_f[numOfFunc])(float,float);
  PTR_F aptr_ft[numOfFunc]; /* same as above */

  /* Initialization or assignment */
  ptr_f = ptr_ft = add;
  aptr_f[0] = aptr_ft[0] = add;
  aptr_f[1] = aptr_ft[1] = sub;
  aptr_f[2] = aptr_ft[2] = mul;
  aptr_f[3] = aptr_ft[3] = div;

  /* function call */
  float a = 3.0f, b = 2.0f;
  printf("Add1: %f\n", (*ptr_f)(a,b));     /* calls add() */
  printf("Add2: %f\n", ptr_f (a,1.0f));       /* ANSI standard extension */
  printf("Add3: %f\n", (ptr_ft)(a,1));    /* calls add(2.2) */
  printf("Add4: %f\n", (aptr_f[0])(a,'2')); /* calls add() */
  printf("Add5: %f\n", aptr_f[0](3,2.0));    /* ANSI extension */
  printf("Sub: %f\n", (aptr_f[1])(a,b)); /* calls sub() */
  printf("Mul: %f\n",(aptr_f[2])(a,b));  /* calls mul() */
  printf("Div1: %f\n",(aptr_f[3])(a,b));  /* calls mul() */
  printf("Div2: %f\n",(aptr_f[3])(-1.0,0.0));  /* calls mul() */
  return 0;
}
/* function definitions */
float add (float a, float b){return a+b;}
float sub (float a, float b){return a-b;}
float mul (float a, float b){return a*b;}
float div (float a, float b){return (b!=0)? a/b: 0;}
