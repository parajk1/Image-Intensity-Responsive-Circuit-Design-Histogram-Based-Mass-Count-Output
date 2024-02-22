library verilog;
use verilog.vl_types.all;
entity p1 is
    port(
        clk             : in     vl_logic;
        finallydone     : out    vl_logic;
        we              : out    vl_logic;
        dataEncoded     : out    vl_logic_vector(7 downto 0)
    );
end p1;
