%{
	#include "y.tab.h"
%}

%%
[a-zA-Z] 	{return LETTER;}
[1-9]+		{return NUM;}
[\t]+		;
[\n]		{return '\n';}
.		{return yytext[0];}
%% 	
