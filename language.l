%{
#include "language.tab.h"
#include <stdlib.h>
#include <string.h>

extern int yylineno;
%}

%%
"let"           { return LET; }
"if"            { return IF; }
"else"          { return ELSE; }
"while"         { return WHILE; }  // Added while keyword
[a-zA-Z_][a-zA-Z0-9_]* {
                        yylval.sval = strdup(yytext);
                        return IDENTIFIER;
                      }
[0-9]+          {
                        yylval.ival = atoi(yytext);
                        return NUMBER;
                      }
"="             { return ASSIGN; }
"+"             { return PLUS; }
"-"             { return MINUS; }
"*"             { return MULTIPLY; }
"/"             { return DIVIDE; }
">"             { return GT; }
"<"             { return LT; }
"{"             { return LBRACE; }
"}"             { return RBRACE; }
";"             { return SEMICOLON; }
"("             { return LPAREN; }
")"             { return RPAREN; }
[ \t\n]         { /* Ignore whitespace */ }
"#"[^\n]*       { /* Ignore comments */ }
.               { return yytext[0]; }
%%
