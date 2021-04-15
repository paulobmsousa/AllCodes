%option noyywrap
/*Scanner for the PLATYPUS Language Winter 20 */

%{
/* for  atof() and atol() */
#include <math.h>
#include <stdlib.h>
/* for string functions */
#include <string.h>
#include <ctype.h>
/* needed for the definition of _isatty and _fileno in Visual Studio*/
#include <io.h>


int linenum = 1;
/* function prototypes */
void ln(void);
/* accepting functions */
int accept_dint(char * lexeme);
float accept_fpl(char * lexeme);
void accept_vid(char * lexeme);
void accept_str(char * lexeme);

%}
DELIM           [ \t\f\v]
WS              {DELIM}+
ZD		0
ZDS             0+
NZD		[1-9]
DIGIT		[0-9]
HEXL            [A-F]
VID		[A-Za-z][A-Za-z0-9]*
STR_T           #
%%


({ZDS}|{NZD}{DIGIT}*)\.{DIGIT}* {
			ln();printf("FPL_T: lexeme: %s value: %f \n",yytext, accept_fpl(yytext));
			}
{ZDS}|{NZD}{DIGIT}*	{
			ln();printf("IL_T(D): lexeme: %s value: %d \n",yytext, accept_dint(yytext));
			}

(\.AND\.)|(\.OR\.)      {ln();printf("LOG_OP_T: %s\n",yytext);}

PLATYPUS|IF|THEN|ELSE|WHILE|REPEAT|READ|WRITE|TRUE|FALSE {
			ln();printf("KW_T: %s\n",yytext);
           		}
{VID}     		         ln();accept_vid(yytext);printf("VID_A: %s\n",yytext);

({VID}{STR_T})     		ln();accept_vid(yytext);printf("VID_S: %s\n",yytext);

"+"|"-"|"*"|"/"     	   ln();printf("ART_OP_T: %s\n",yytext);

({STR_T}{STR_T})                      ln();printf("SCAT_T: %s\n",yytext);

"=="|"<>"|"<"|">"         ln();printf("REL_OP_T: %s\n",yytext);

"="    			  ln();printf("ASS_OP_T: %s\n",yytext);

"\""[^\xFF\"]*"\""     ln();printf("STR_T: %s\n",yytext); accept_str(yytext);

"("          		  ln();printf("LPR_T: %s\n",yytext);
")"           		  ln();printf("RPR_T: %s\n",yytext);
"{"           		  ln();printf("LBR_T: %s\n",yytext);
"}"           		  ln();printf("RBR_T: %s\n",yytext);
";"           		  ln();printf("EOS_T: %s\n",yytext);
","           		  ln();printf("COM_T: %s\n",yytext);

"!!"[^\n\xFF]*    ln();printf("Comment Line: %s\n",yytext);

{WS}			/* ignore white space */

[\n]	                  ++linenum;/* skip newline but increment the line count */
			/* all the rest is an error */
.           		ln();printf("ERR_T: %s\n",yytext);
%%
/* Print line number */
void ln(void){printf("%3d: ",linenum);}
/* Accepting function for DIL(decimal intege literal).
   The function does not check for a valid integer range. 
 */
int accept_dint(char * lexeme){
   return (int)atol(lexeme);
}

/* accepting function for FPL.
   The function does not check for a valid floating point range.
*/
float accept_fpl(char * lexeme){
   return (float)atof(lexeme);
}
/* accepting function for VID */
void accept_vid(char * lexeme){
   if(yyleng > 8)
    if(lexeme[yyleng-1] == '@')
    {lexeme[7] = '@'; lexeme[8] = '\0';}
    else 
     lexeme[8] = '\0';
}
/* accepting function for sring literals */
void accept_str(char * lexeme){
   int i;
   for(i =0; i < yyleng;++i)
     if(lexeme[i] == '\n') ++linenum;
}
/* The main function */
int main(int argc,char** argv){
	/* check for a source filename */
	if(argc>1)
	  fopen_s(&yyin,argv[1], "r");
   	/* if there is no source filename */
	else{
	  yyin=stdin;
  	 printf("\nType your program. Terminate with Ctrl-Z followed by Enter.\n"); 
  	}
  	 yylex();
	return 0;
}
