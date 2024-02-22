library verilog;
use verilog.vl_types.all;
entity comparator is
    port(
        I               : in     vl_logic_vector(7 downto 0);
        O               : out    vl_logic_vector(255 downto 0)
    );
end comparator;
