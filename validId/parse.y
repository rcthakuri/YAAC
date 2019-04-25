%{
	#include <stdio.h>
	#include <stdlib.h>
	
	int yylex();
	int yyerror();
%}
%token LETTER NUM
%%
statement: LETTER var '\n' {printf("Valid identifer\n");
	 			  return 0;
				  }
	var: var LETTER
     	     |var NUM
	     |
     	     ;
%%

int main()
{
	printf("Enter test expression: ");
	yyparse();
	return 0;
}

yyerror()
{
	printf("\nInvalid identifer\n");
	exit(0);
}

	
