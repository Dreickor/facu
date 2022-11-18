library verilog;
use verilog.vl_types.all;
entity sum_comp_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        ia              : in     vl_logic;
        ib              : in     vl_logic;
        icin            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sum_comp_vlg_sample_tst;
