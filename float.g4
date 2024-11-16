grammar float;

program: FLOAT * EOF;
FLOAT : DIGIT+ '.'* DIGIT*;
fragment DIGIT : [0-9];
