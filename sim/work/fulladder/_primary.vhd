library verilog;
use verilog.vl_types.all;
entity fulladder is
    port(
        a_i             : in     vl_logic;
        b_i             : in     vl_logic;
        carry_i         : in     vl_logic;
        sum_o           : out    vl_logic;
        carry_o         : out    vl_logic
    );
end fulladder;
