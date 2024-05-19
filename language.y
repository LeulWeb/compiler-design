%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
extern int yylineno;
%}

%union {
    int ival;
    char *sval;
}

%token VAR IF ELSE
%token <sval> IDENTIFIER
%token <ival> NUMBER
%token ASSIGN PLUS MINUS MULTIPLY DIVIDE GT LT LBRACE RBRACE SEMICOLON LPAREN RPAREN
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE
%left PLUS MINUS
%left MULTIPLY DIVIDE

%%
program:
    statements { printf("Parsed program.\n"); }
    ;

statements:
    statement { printf("Parsed statement.\n"); }
    | statements statement { printf("Parsed statements.\n"); }
    ;

statement:
    var_decl { printf("Parsed variable declaration.\n"); }
    | assignment { printf("Parsed assignment.\n"); }
    | if_statement { printf("Parsed if statement.\n"); }
    | block { printf("Parsed block.\n"); }
    ;

block:
    LBRACE statements RBRACE { printf("Parsed block of statements.\n"); }
    ;

var_decl:
    VAR IDENTIFIER SEMICOLON { printf("Parsed var_decl.\n"); free($2); }
    ;

assignment:
    IDENTIFIER ASSIGN expression SEMICOLON { printf("Parsed assignment.\n"); free($1); }
    ;

if_statement:
    IF LPAREN condition RPAREN statement %prec LOWER_THAN_ELSE { printf("Parsed if without else.\n"); }
    | IF LPAREN condition RPAREN statement ELSE statement { printf("Parsed if with else.\n"); }
    ;

condition:
    expression GT expression { printf("Parsed condition.\n"); }
    | expression LT expression { printf("Parsed condition.\n"); }
    ;

expression:
    NUMBER { printf("Parsed number: %d\n", $1); }
    | IDENTIFIER { printf("Parsed identifier: %s\n", $1); free($1); }
    | expression PLUS expression { printf("Parsed addition.\n"); }
    | expression MINUS expression { printf("Parsed subtraction.\n"); }
    | expression MULTIPLY expression { printf("Parsed multiplication.\n"); }
    | expression DIVIDE expression { printf("Parsed division.\n"); }
    ;

%%
void yyerror(const char *s) {
    fprintf(stderr, "Error: %s at line %d\n", s, yylineno);
}

int main(void) {
    return yyparse();
}
