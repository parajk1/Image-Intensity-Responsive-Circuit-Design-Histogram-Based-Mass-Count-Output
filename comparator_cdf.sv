module comparator_cdf(I,O);
input [14:0] I; //modified to carry 32768
output reg O;
genvar k; // Declare a generate variable

initial
begin
O=0; //initial output to 0
end
 

always @(*) begin
    if (I >= 15'd31768) begin //change to find the max value
        O = 1'b1;
    end
    else begin
        O = 1'b0;
    end
end


endmodule