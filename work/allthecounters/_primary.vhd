library verilog;
use verilog.vl_types.all;
entity allthecounters is
    port(
        clk             : in     vl_logic;
        clear           : in     vl_logic;
        dataInput       : in     vl_logic_vector(7 downto 0);
        counterI        : in     vl_logic_vector(255 downto 0);
        counterCDFOut   : out    vl_logic_vector(255 downto 0)
    );
end allthecounters;
