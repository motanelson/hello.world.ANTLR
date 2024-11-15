grammar Hello;
program  :  ID ;        
ID : [a-z]+ ;             
WS : [ \t\r\n]+ -> skip ; 
