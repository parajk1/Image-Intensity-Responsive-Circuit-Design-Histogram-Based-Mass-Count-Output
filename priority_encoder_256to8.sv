//  module priority_encoder_256to8 (
//     input [255:0] inputs,
//     output reg [7:0] encoded_output
// );

// always @(*) begin
//     for (int i = 0; i < 256; i = i + 1) begin
//         if (inputs[i] == 1'b1) begin
//             encoded_output = {3'b0, i[7:0]}; // Convert i to an 8-bit binary
// 			$display("encoded_output = %b", encoded_output);
//             break;
//         end
//     end
// end

// endmodule 


module priority_encoder_256to8 #(
  parameter Width = 256
) (
  input  logic clk,
  input  logic rst_n,
  input  logic [Width-1:0] in,
  input  logic enable,
  output logic [$clog2(Width)-1:0] out,
  output logic valid
);

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      out <= 0;
      valid <= 0;
    end
    else if (enable) begin
      for (int i = Width-1; i >= 0 ; i = i - 1) begin
        if (in[i]) begin
          out <= i;
          valid <= 1;
//$display("in[%d] = %h, out = %b", i, in, out);
          //break; // Break the loop after finding the highest priority bit
        end
      end
    end
  end

endmodule
