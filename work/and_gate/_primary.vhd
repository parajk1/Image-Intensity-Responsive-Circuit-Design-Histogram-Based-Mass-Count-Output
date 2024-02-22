library verilog;
use verilog.vl_types.all;
entity and_gate is
    port(
        input_bit       : in     vl_logic;
        input_8bit      : in     vl_logic_vector(7 downto 0);
        output_bit      : out    vl_logic_vector(7 downto 0)
    );
end and_gate;
