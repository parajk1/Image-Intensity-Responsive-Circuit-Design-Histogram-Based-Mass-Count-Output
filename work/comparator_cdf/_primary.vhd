library verilog;
use verilog.vl_types.all;
entity comparator_cdf is
    port(
        I               : in     vl_logic_vector(14 downto 0);
        O               : out    vl_logic
    );
end comparator_cdf;
