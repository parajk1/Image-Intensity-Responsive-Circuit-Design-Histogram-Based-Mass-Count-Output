library verilog;
use verilog.vl_types.all;
entity priority_encoder_256to8 is
    generic(
        Width           : integer := 256
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        \in\            : in     vl_logic_vector;
        enable          : in     vl_logic;
        \out\           : out    vl_logic_vector;
        valid           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Width : constant is 1;
end priority_encoder_256to8;
