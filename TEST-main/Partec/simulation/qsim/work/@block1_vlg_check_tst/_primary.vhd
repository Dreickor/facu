library verilog;
use verilog.vl_types.all;
entity Block1_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        N               : in     vl_logic;
        res0            : in     vl_logic;
        res1            : in     vl_logic;
        res2            : in     vl_logic;
        res3            : in     vl_logic;
        V               : in     vl_logic;
        z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block1_vlg_check_tst;
