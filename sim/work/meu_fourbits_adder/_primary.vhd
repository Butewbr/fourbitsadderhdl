library verilog;
use verilog.vl_types.all;
entity meu_fourbits_adder is
    port(
        a_i             : in     vl_logic_vector(3 downto 0);
        b_i             : in     vl_logic_vector(3 downto 0);
        carry_i         : in     vl_logic;
        carry_o         : out    vl_logic;
        sum_o           : out    vl_logic_vector(3 downto 0)
    );
end meu_fourbits_adder;
