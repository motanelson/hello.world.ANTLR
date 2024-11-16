grammar index;

// Ponto de entrada para o código da linguagem
program : line* EOF ;

// Definição de uma linha, que pode ser uma operação, definição de variável ou sub-rotina
line : operacao
     | variavel
     | subrotina
     ;

// Definição de uma operação (exemplo: "mul,a,b")
operacao : 'mul' ' ' ID ',' VALUE
         | 'add' ' ' ID ',' VALUE
         | 'sub' ' ' ID ',' VALUE
         | 'div' ' ' ID ',' VALUE
         ;

// Definição de variável (exemplo: "integer,i,0")
variavel : 'integer' ',' ID ',' INT | 'float' ',' ID ',' FLOAT | 'string' ',' ID ',' STRING;

// Definição de sub-rotina (exemplo: "sub,main")
subrotina : 'def' ',' ID ;

// Tokens básicos
ID : [a-zA-Z_][a-zA-Z0-9_]* ; // Identificadores

INT : DIGIT+ ;               // Inteiros
FLOAT : DIGIT+ '.' DIGIT* ;               // float
STRING : '"'~[\t\r\n]+ '"' ;
fragment DIGIT: [0-9] ;
VALUE :  INT | FLOAT | STRING | ID ;

WS : [ ;\t\r\n]+ -> skip ;    // Espaços em branco (ignorar)
oat
fragment DIGIT: [0-9] ;
WS : [ ;\t\r\n]+ -> skip ;    // Espaços em branco (ignorar)
