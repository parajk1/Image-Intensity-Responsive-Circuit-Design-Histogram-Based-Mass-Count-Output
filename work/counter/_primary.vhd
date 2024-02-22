library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        clear           : in     vl_logic;
        enable          : in     vl_logic;
        q               : out    vl_logic_vector(14 downto 0)
    );
end counter;
