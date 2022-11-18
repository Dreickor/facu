library verilog;
use verilog.vl_types.all;
entity PARTED_vlg_check_tst is
    port(
        Led1            : in     vl_logic;
        Led2            : in     vl_logic;
        Led3            : in     vl_logic;
        Led4            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end PARTED_vlg_check_tst;
