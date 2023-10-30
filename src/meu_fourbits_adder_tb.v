`timescale 1ns/1ps

module meu_fourbits_adder_tb;

reg [3:0] a_tb, b_tb;
reg carry_i_tb;
wire [3:0] sum_tb;
wire carry_o_tb;

meu_fourbits_adder U0 (
    .a_i(a_tb),
    .b_i(b_tb),
    .carry_i(carry_i_tb),
    .sum_o(sum_tb),
    .carry_o(carry_o_tb)
);

initial begin
  carry_i_tb = 1'b0;

  a_tb = 4'b0000;
  b_tb = 4'b0000;

  #1
  a_tb = 4'b0001;
  b_tb = 4'b0000;

  #2
  a_tb = 4'b1111;
  b_tb = 4'b0001;

  #3
  a_tb = 1'b0111;
  b_tb = 1'b0001;

  #2
  a_tb = 4'b1111;
  b_tb = 4'b1111;

  #2
  a_tb = 4'b1111;
  b_tb = 4'b1111;
  carry_i_tb = 1'b1;

  $stop;

end

endmodule
