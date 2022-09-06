module Ring_Counter #(parameter WIDTH=4) 
//Parameter width stores the size bits of the output in the ring counter....
(  
  	input clk,                
	input reset,
  	output reg [WIDTH-1:0] out
);    

//We always begin our operations at the negative edge of the clock...

always @ (negedge clk) 
begin
	//Output is 1 if not performing reset....
    if (!reset)
        out <= 1;
    else 
	begin
        out[WIDTH-1] <= out[0];
    	for (integer i = 0; i < WIDTH-1; i=i+1) 
		begin
        	out[i] <= out[i+1];
			//Here the output is shown for the shifting of the 1's in the ring counter...
    	end
    end
end
endmodule