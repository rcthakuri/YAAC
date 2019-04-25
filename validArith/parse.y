%{
	#include <stdio.h>
	#include <stdlib.h>
	int yylex();
	int yyerror();
%}
%token ALPHA NUM;
%left '+''-'
%left '*''/'

%%
grammar: expr '\n' {printf("\nValid arithmetic expression\n");}

expr: expr'+'expr
      |expr'-'expr
      |expr'*'expr
      |expr'/'expr
      |NUM
      |ALPHA
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
	printf("\nInvalid arithmetic expressin\n");
	exit(1);
}
