module Registrador(
	input logic clock, 
	input logic [3:0] entrada, 
	output logic[3:0] saida
);
	
	always_ff @ (posedge clock)
      		saida <= entrada;		
endmodule