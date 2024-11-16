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
variavel : 'integer' ',' ID ',' VALUE | 'float' ',' ID ',' VALUE ;

// Definição de sub-rotina (exemplo: "sub,main")
subrotina : 'sub' ',' ID ;

// Tokens básicos
VALUE : ID | INT | FLOAT;
ID : [a-zA-Z_][a-zA-Z0-9_]* ; // Identificadores
INT : DIGIT+ ;               // Inteiros
FLOAT : DIGIT+ '.' DIGIT* ;               // float
fragment DIGIT: [0-9] ;
WS : [ ;\t\r\n]+ -> skip ;    // Espaços em branco (ignorar)
