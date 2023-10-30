// FOUR BITS ADDER!!!

module meu_fourbits_adder (
  a_i,
  b_i,
  carry_i,
  carry_o,
  sum_o
);

// DECLARAÇÃO DAS PORTAS - INPUT E OUTPUT
// No caso, criamos 3 versões de a_i (um vetor de a_i's) pra usar cada saída dos full_adder como entrada no próximo.
input wire [3:0] a_i, b_i;
input wire carry_i;
output wire [3:0] sum_o;
output wire carry_o;

wire w_carry_o_0, w_carry_o_1, w_carry_o_2; 

// colocamos que o primeiro resultado de soma será o nosso sum[0], o resultado do carry do fulladder (carry_o) será o primeiro wire de carry do nosso fourbits adder, aka o w_carry_o_0 
// colocamos que os inputs do full adder (a_i e b_i) serão os nossos primeiros inputs do fourbitadder, aka a_i[0] e b_i[0]
fulladder U00 (.sum_o(sum_o[0]), .a_i(a_i[0]), .b_i(b_i[0]), .carry_o(w_carry_o_0), .carry_i(carry_i));

// fazemos o mesmo para os outrso fulladders, mas com as saídas dos fulladders anteriores
fulladder U01 (.sum_o(sum_o[1]), .a_i(a_i[1]), .b_i(b_i[1]), .carry_o(w_carry_o_1), .carry_i(w_carry_o_0));
fulladder U10 (.sum_o(sum_o[2]), .a_i(a_i[2]), .b_i(b_i[2]), .carry_o(w_carry_o_2), .carry_i(w_carry_o_1));
fulladder U11 (.sum_o(sum_o[3]), .a_i(a_i[3]), .b_i(b_i[3]), .carry_o(carry_o), .carry_i(w_carry_o_2));

endmodule
