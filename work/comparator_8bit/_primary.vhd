library verilog;
use verilog.vl_types.all;
entity comparator_8bit is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        O               : out    vl_logic_vector(7 downto 0)
    );
end comparator_8bit;
