library verilog;
use verilog.vl_types.all;
entity mem is
    port(
        clock           : in     vl_logic;
        rd              : out    vl_logic_vector(7 downto 0);
        done            : out    vl_logic;
        reallydone      : out    vl_logic
    );
end mem;
