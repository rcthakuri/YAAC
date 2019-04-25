%{
	#include "y.tab.h"
	#include <math.h>
	
	extern int yylval;

%}

%%
[0-9]+ 	{yylval = atoi(yytext);
	 return NUM;
        }
[\t]+ 	;
[\n]	{return '\n';}
.	{return yytext[0];}
%%


