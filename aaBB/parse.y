%{
	#include <stdio.h>
	#include <stdlib.h>
	
	int yyerror();
	int yylex();
%}

%token A B

%%
str: recA recB '\n' {printf("Valid expression\n");
   			return 0;
		}
     recA: A recA
     	   |A
  
     recB: B recB
     	   |B
	;
%%

int main()
{
	printf("Enter test str: ");
	yyparse();
	return 0;
}

yyerror()
{
	printf("Invalid expression\n");
	exit(0);
}
