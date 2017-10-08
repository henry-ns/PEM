module Questao02(
	input clock,
	output logic f
);

	logic[8:0] CountEntrada, CountSainda;

	Count count(.clock(clock), .entrada(CountEntrada), .saida(CountSainda));

	always_comb
		begin
			if(CountSainda == 8'd499)
				CountEntrada = 8'd0;
			else
				CountEntrada = CountSainda + 8'd1;
		end

	always_comb	
		begin
			if((CountSainda > 8'd19) && (CountSainda < 8'd90))
				f = 1'd0;
			else
				f = 1'd1;
		end
	
endmodule
