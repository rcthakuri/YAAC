%{
	#include <stdio.h>
	#include <stdlib.h>

	int yylex();
	int yyerror();
%}

%token NUM

%%
expr: e '\n' {printf("Valid expression\n");
    	      printf("Result = %d", $$);
	     }
      e: e'+'e {$$ = $1 + $3;}
      	 |e'-'e {$$ = $1 - $3;}
	 |e'*'e {$$ = $1 * $3;}
	 |e'/'e {if($3 == 0) {yyerror("Divisible by 0");
			exit(0);
			}
	 	 else 
			$$ == $1 / $3;
		 }
	 |'('e')' {$$ = $2;}
	 |NUM {$$ = $1;}
%%

int main()
{
	printf("Enter expression: ");
	yyparse();
}

yyerror()
{
	printf("\nInvalid expression\n");
	exit(0);
}
	
