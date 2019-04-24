%{
#include<stdio.h>
%}

%%

int|char|public|protected|private|String|args|if|else|do|while|class|package|static|void|main|float|double printf("\nKeywords\t%s",yytext);
[a-zA-Z]+						printf("\nIdentifier- \t%s",yytext);
[+-]?[0-9]+						printf("\nConstant- \t%s:",yytext);
[<>=]							printf("\nBinary operator- \t%s",yytext);
[\(|\)|\[|\]|\{|\}]					printf("\nBrackts- \t%s",yytext);
[;]							printf("\nTermination- \t%s",yytext);
[!@#$%^&*]						printf("\nSymbol- \t%s",yytext);

%%

int main()
{
	yyin=fopen("input_token.java","r");
	yylex();
	return 0;
}

int yywrap()
{
	return 1;
}


