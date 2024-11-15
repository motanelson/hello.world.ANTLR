grammar value;

program: VALUE * EOF;
VALUE : INT | ID ;
ID:[a-z]+;
INT : DIGIT+;
fragment DIGIT: [0-9];
