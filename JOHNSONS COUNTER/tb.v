//TESTBENCH FILE FOR JOHNSONS COUNTER......

module tb;  
parameter WIDTH = 4;  
  
//Instantiating the variables from the module file...
reg clk;  
reg reset;  
wire [WIDTH-1:0] out;  
  
//Dumping the modules and the values for the ouput in terminal and gtkwave...
Johnson_Counter JC(.clk (clk), .reset (reset), .out (out));  
  
always #10 clk = ~clk; 
//Clock always in the continuous interval of 10 ps... 

initial 
begin  

    //Initializing the values...
    {clk, reset} <= 0;  
    //For displaying the output in terminal...
    $monitor ("T=%0t out=%b", $time, out);  
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
    $dumpfile("JOHNSON_COUNTER.vcd");
    $dumpvars(0,tb);
end
endmodule  