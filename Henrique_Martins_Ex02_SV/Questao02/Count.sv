module Count(
	input logic clock, 
	input logic [8:0] entrada, 
	output logic[8:0] saida
);
	
	always_ff @ (posedge clock)
     		saida <= entrada;		
endmodule

