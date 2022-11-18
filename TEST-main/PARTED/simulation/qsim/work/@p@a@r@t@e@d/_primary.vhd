library verilog;
use verilog.vl_types.all;
entity PARTED is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        X               : in     vl_logic;
        Led1            : out    vl_logic;
        Led2            : out    vl_logic;
        Led3            : out    vl_logic;
        Led4            : out    vl_logic
    );
end PARTED;
