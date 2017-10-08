module Contador_2(input logic clock, reset, output logic[3:0] c);
	
	logic direcao, i;

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
								if(i)
									begin
										direcao <= 1'b0;
										c <= c + 4'd1;
										i <= ~i;
									end
								else i <= ~i;
							end
						else
							c <= c - 4'd1;
					else 
						if(c == 4'd15)
							if(i)
								begin
									direcao <= 1'b1;
									c <= c - 4'd1;
									i <= ~i;
								end
							else i <= ~i;
						else
							c <= c + 4'd1;
							
				end
		endcase
							
endmodule
