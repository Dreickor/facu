library verilog;
use verilog.vl_types.all;
entity sum_comp is
    port(
        ia              : in     vl_logic;
        ib              : in     vl_logic;
        icin            : in     vl_logic;
        clk             : in     vl_logic;
        ores            : out    vl_logic;
        ocout           : out    vl_logic
    );
end sum_comp;
