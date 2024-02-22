library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        clk             : in     vl_logic;
        done            : in     vl_logic;
        we              : out    vl_logic;
        enable          : out    vl_logic;
        reallydone      : in     vl_logic
    );
end controller;
