module Questao10 ( 
	input logic reset, clk,
	output logic f, g 
);

logic [12:0] counter;

always_ff @(posedge clk or negedge reset ) 
begin 
	if (!reset) 
	begin
		counter <= 10'd0;
		f <= 1'b0;
		g <= 1'b0;
	end
	else 
	begin
		f <= 1'b1;
		
		if (counter > 13'd3850 && counter < 13'd4150) 
			f <= 1'b0;
			
		g <= 1'b1;
		
		if (counter > 13'd3200 && counter < 13'd3800) 
			g <= 1'b0;
		
		if (counter < 13'd4600) 
			counter <= counter + 13'd1;
		else 
			counter <= 13'd0;
		
	end
end
endmodule
