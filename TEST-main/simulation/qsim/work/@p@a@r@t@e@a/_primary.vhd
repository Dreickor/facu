library verilog;
use verilog.vl_types.all;
entity PARTEA is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        LED             : out    vl_logic
    );
end PARTEA;
