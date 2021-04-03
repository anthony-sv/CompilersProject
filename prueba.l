ID [a-zA-Z][a-zA-Z0-9_]*
D [0-9]
S ["].*["]
C ['].[']
F {D}+"."{D}+
CHAR "char"
SHORT "short"
INT "int"
LONG "long"
CINT "cint"
E   ([Ee][+-]?{D}+)
%%
"//".* {printf("<comment>");}
"return" {printf("<return>");}
"for" {printf("<for>");}
"while" {printf("<while>");}
"do" {printf("<do>");}
"if" {printf("<if>");}
"else" {printf("<else>");}
"let" {printf("<let>");}
"const" {printf("<const>");}
"def" {printf("<def>");}
"bool" {printf("<bool>");}
{CHAR} {printf("<char>");}
u{CHAR} {printf("<uchar>");}
{SHORT} {printf("<short>");}
u{SHORT} {printf("<ushort>");}
{INT} {printf("<int>");}
u{INT} {printf("<uint>");}
{LONG} {printf("<long>");}
u{LONG} {printf("<ulong>");}
{CINT} {printf("<cint>");}
u{CINT} {printf("<ucint>");}
"void" {printf("<void>");}
"float" {printf("<float>");}
"double" {printf("<double>");}
"string" {printf("<string>");}
"null" {printf("<null>");}
"undefined" {printf("<undefined>");}
"break" {printf("<break>");}
"continue" {printf("<continue>");}
"import" {printf("<import>");}
"export" {printf("<export>");}
"in" {printf("<in>");}
"list" {printf("<list_ds>");}
{ID} {printf("<id>");}
{D}+ {printf("<int_c>");}
{F} {printf("<float_c>");}
{S} {printf("<str_c>");}
{C} {printf("<char_c>");}
{F}|{D}{E} {printf("<exp_c>");}
"<<=" {printf("<lShift_As>");}
">>=" {printf("<rShift_As>");}
"+=" {printf("<suma_As>");}
"-=" {printf("<resta_As>");}
"*=" {printf("<multi_As>");}
"/=" {printf("<div_As>");}
"**=" {printf("<pote_As>");}
"%=" {printf("<mod_As>");}
"&=" {printf("<and_As>");}
"|=" {printf("<or_As>");}
"~=" {printf("<not_As>");}
"^=" {printf("<xor_As>");}
"!^=" {printf("<xnor_As>");}
"!&=" {printf("<nand_As>");}
"!|=" {printf("<nor_As>");}
"=>" {printf("<arrowF>");}
"->" {printf("<map_Op>");}
"<<" {printf("<lShift_Op>");}
">>" {printf("<rShift_Op>");}
"++" {printf("<inc_Op>");}
"--" {printf("<dec_Op>");}
"&&" {printf("<and_Op>");}
"||" {printf("<or_Op>");}
"==" {printf("<eq_Op>");}
"!=" {printf("<neq_Op>");}
"<=" {printf("<le_Op>");}
">=" {printf("<ge_Op>");}
"[" {printf("[");}
"]" {printf("]");}
"(" {printf("(");}
")" {printf(")");}
"{" {printf("{");}
"}" {printf("}");}
":" {printf(":");}
"=" {printf("=");}
";" {printf(";");}
"," {printf(",");}
"?" {printf("?");}
"!" {printf("!");}
"+" {printf("+");}
"-" {printf("-");}
"*" {printf("*");}
"**" {printf("**");}
"/" {printf("/");}
"%" {printf("%%");}
"<" {printf("<");}
">" {printf(">");}
"." {printf(".");}
"&" {printf("&");}
"~" {printf("~");}
"^" {printf("^");}
"|" {printf("|");}
. 
%%
int main(int argc, char **argv){
    ++argv, --argc;
    if( argc > 0 )
        yyin = fopen(argv[0], "r");
    else
        yyin = stdin;
    yylex();
}