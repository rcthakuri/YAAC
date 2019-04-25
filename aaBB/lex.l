%{
	#include "y.tab.h"
%}

%%
[aA] 	{return A;}
[bB]	{return B;}
[\t]+ 	;
.	{return yytext[0];}
[\n]	{return '\n';}
%%
