module mux3 (
    input wire [7:0] input_8bit,
    input wire select[1:0],
    output wire [7:0] output_image
);

    assign output_image = (select == 2'b00) ? 8'b11111111 : // Select 0b00 (0) for 255
                          (select == 2'b01) ? 8'b00000000 : // Select 0b01 (1) for 0
                          (select == 2'b10) ? input_8bit :   // Select 0b10 (2) for 8-bit input
                          8'b00000000; // Default output (you can change this to suit your needs)

endmodule

/* module mux2 # (parameter WIDTH = 8)
(input [WIDTH-1:0] d0, d1, input s,
output [WIDTH-1:0] y);
assign y = s ? d1 : d0;
endmodule */
