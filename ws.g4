grammar ws;

program: DEFS * EOF;
DEFS : ID' '*'='' '*VALUE;
VALUE : STRING | NUMBER;
ID : [a-zA-Z]+;

NUMBER : DIGIT+ '.'* DIGIT*; 
fragment DIGIT: [0-9];
STRING : '"' ~[\t\r\n]* '"' ;
WS : [ \t\n\r] ->skip;
