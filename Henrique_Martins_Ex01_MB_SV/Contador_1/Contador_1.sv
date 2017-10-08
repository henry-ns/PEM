module Contador_1(input logic clock, reset, output logic [3:0] c);
	logic direcao;

	always @(posedge clock)
		case(reset)
			1'b1: 
				begin
					c <= 4'b0;
					direcao <= 1'b0;
				end
			1'b0:
				begin
					if(direcao)
						if(c == 4'b0)
							begin
								direcao <= 1'b0;
								c <= c + 4'd1;
							end
						else
							c <= c - 4'd1;
					else 
						if(c == 4'd15)
							begin
								direcao <= 1'b1;
								c <= c - 4'd1;
							end
						else
							c <= c + 4'd1;
							
				end
		endcase
				
endmodule
