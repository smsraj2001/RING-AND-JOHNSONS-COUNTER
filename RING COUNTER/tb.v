//TESTBENCH FILE FOR RING COUNTER......

module tb;
parameter WIDTH = 4;
  
//Instantiating the variables from the module file...
reg clk;
reg reset;
wire [WIDTH-1:0] out;

//Dumping the modules and the values for the ouput in terminal and gtkwave...
Ring_Counter RC (.clk (clk),.reset (reset),.out (out));
  
always #10 clk = ~clk;
//Clock always in the continuous interval of 10 ps...
  
initial 
begin
    //Initializing the values...
	{clk, reset} <= 0;
    $monitor ("T=%0t out=%b", $time, out);
    //For displaying the output in terminal...
    repeat (2) @(negedge clk);
    //At every 2 intervals of clock we see the change in the counter along with the manipulation of reset...
    reset <= 1;
    repeat (15) @(negedge clk);
    //For displaying in 15 iterations...
    $finish;
end
  
initial 
begin
    //This is done for the output in gtkwave...
    $dumpfile("RING_COUNTER.vcd");
    $dumpvars(0,tb);
end
endmodule