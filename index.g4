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
         | 'mul' ' ' ID ',' ID
         | 'add' ' ' ID ',' ID
         | 'sub' ' ' ID ',' ID
         | 'div' ' ' ID ',' ID
         | 'mul' ' ' INT ',' ID  //memory writer
         | 'add' ' ' INT ',' ID  //memory writer
         | 'sub' ' ' INT ',' ID  //memory writer
         | 'div' ' ' INT ',' ID //memory writer
         | 'mul' ' ' ID ',[' VALUE ']' //memory reader
         | 'add' ' ' ID ',[' VALUE ']' //memory reader
         | 'sub' ' ' ID ',[' VALUE ']' //memory reader
         | 'div' ' ' ID ',[' VALUE ']' //memory reader

         ;

// Definição de variável (exemplo: "integer,i,0")
variavel : 'integer' ',' ID ',' INT | 'float' ',' ID ',' FLOAT | 'string' ',' ID ',' STRING;

// Definição de sub-rotina (exemplo: "sub,main")
subrotina : 'def' ',' ID ;

// Tokens básicos
ID : [a-zA-Z_][a-zA-Z0-9_]* ; // Identificadores
VALUE : INT | FLOAT | STRING  ;
INT : DIGIT+ ;               // Inteiros
FLOAT : DIGIT+ '.' DIGIT* ;               // float
STRING : '"'~[\t\r\n]+ '"' ;
fragment DIGIT: [0-9] ;

WS : [ ;\t\r\n]+ -> skip ;    // Espaços em branco (ignorar)
