library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        res0            : out    vl_logic;
        clk             : in     vl_logic;
        a0              : in     vl_logic;
        cin             : in     vl_logic;
        b0              : in     vl_logic;
        res1            : out    vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic;
        res2            : out    vl_logic;
        a2              : in     vl_logic;
        b2              : in     vl_logic;
        res3            : out    vl_logic;
        a3              : in     vl_logic;
        b3              : in     vl_logic;
        cout            : out    vl_logic;
        N               : out    vl_logic;
        z               : out    vl_logic;
        V               : out    vl_logic
    );
end Block1;
