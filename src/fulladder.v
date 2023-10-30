/*
ESTE EXEMPLO DESCREVE UM FULL-SOMADOR
*/

// MODULO + NOME + PORTLIST
module fulladder (
    a_i,
    b_i,
    carry_i,
    sum_o,
    carry_o
);

// DECLARAÇÃO DAS PORTAS - INPUT E OUTPUT
input wire a_i, b_i, carry_i;
output wire sum_o, carry_o;

wire w_sum, w_carry1, w_carry2;

halfadd U1 (
    .a_i(a_i),
    .b_i(b_i),
    .sum_o(w_sum),
    .carry_o(w_carry1)
);

halfadd U2 (
    .a_i(w_sum),
    .b_i(carry_i),
    .sum_o(sum_o),
    .carry_o(w_carry2)
);

assign carry_o = w_carry1 ^ w_carry2;

endmodule
