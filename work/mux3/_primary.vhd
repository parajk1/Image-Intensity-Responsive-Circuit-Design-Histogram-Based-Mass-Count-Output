library verilog;
use verilog.vl_types.all;
entity mux3 is
    port(
        input_8bit      : in     vl_logic_vector(7 downto 0);
        \select\        : in     vl_logic_vector(1 downto 0);
        output_image    : out    vl_logic_vector(7 downto 0)
    );
end mux3;
