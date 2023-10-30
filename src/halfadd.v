/*
ESTE EXEMPLO DESCREVE UM MEIO-SOMADOR
*/

// MODULO + NOME + PORTLIST
module halfadd (a_i, b_i, sum_o, carry_o);

// DECLARAÇÃO DAS PORTAS - INPUT E OUTPUT
input  wire a_i, b_i; 
output wire sum_o, carry_o;

// COMPORTAMENTO DO MEIO-SOMADOR
// OBSERVAR O OPERADOR ASSIGN -> UTILIZADO PARA LÓGICA COMBINACIONAL
assign sum_o = a_i ^ b_i;   // OPERADOR LÓGICO OU
assign carry_o = a_i & b_i; // OPERADOR LÓGICO AND

endmodule
