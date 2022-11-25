%{
    #include<stdio.h>
    #include<stdlib.h>
    int yylex();
    void yyerror(const char *s);
%}
%token A N U
%%
a : 
A N
| a A
| U A
| U N
| U A N
| A U N
| A N U
| A U
| a N
| a U
| a U a
| A;
%%

int main() {
    printf("Enter the string:\t");
    yyparse();
    printf("valid variable\n");
}

void yyerror() {
    printf("invalid variable\n");
    exit(0);
}