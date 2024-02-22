module testbench();

//testbench cares about only one thing: if finallydone= 1
reg clk;
reg clear;
wire [7:0] datainput, dataoutput;
wire finallydone;
wire we;
wire [7:0] I;
reg [7:0] RAM[32639:0]; //modified
reg [7:0] temp; //modified
integer i, k, file_id;
integer j;

// instantiate device to be tested
p1 dut (.clk(clk),
        .finallydone(finallydone),
        .we(we),
        .dataEncoded(I));



// initialize test
initial
begin
  i=0;
  j=0;
  k=0;
end
// generate clock to sequence tests
always
begin
  clk <= 0;
    # 5; 
  clk <= 1;
    # 5; // clock duration
end

always @(negedge clk) begin
    #1
    if (we) begin
        //temp = temp << 8;
        //i = i + 1;
        //temp = I[7:0];
		//$display("I = %b, temp = %b", I, temp);
        //if (i == 8) begin
            i = 0;
            RAM[j] = I;
            //$display("RAM = %h", temp);
            j = j + 1;

            // if (I == 8'd255) begin
            //   k = k + 1;
            // end
        //end
    end

    if(finallydone==1)begin
            $writememh("output.dat",RAM);
            //$display("k = %d", k/4);
            #1
            $write ("Simulation successfully");	
            clear = 1;  //could be unnessary
            $stop;
    end
end


endmodule
